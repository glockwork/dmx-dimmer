// dmx dimmer

#include <avr/io.h>
#include <avr/wdt.h>
#include <util/delay.h>


#define output_low(port,pin)  port &= ~(1<<pin)
#define output_high(port,pin) port |= (1<<pin)
#define set_input(portdir,pin)  portdir &= ~(1<<pin)
#define set_output(portdir,pin) portdir |=  (1<<pin)


// kill time in a calibrated way
void delay_ms (uint16_t ms) {
    uint16_t delay_count = 1000; //F_CPU / 17500;
    volatile uint16_t i;

    while (ms != 0) {
	for (i = 0; i != delay_count; i++) wdt_reset();
	ms--;
    }
}

// indicate 8 bits using 3 leds
void blink8 (uint8_t data) {
    uint8_t i;

    for (i = 0; i < 8; i++) {
	//indicate bit
	if (data & 0b00000001) output_high(PORTC, PC4);
	else output_high(PORTC, PC5);
	delay_ms(500);

	// indication complete
	output_low(PORTC, PC4);
	output_low(PORTC, PC5);
	delay_ms(100);

	data = data >> 1;
    }    
}


#define SPI_DDR      DDRB
#define SPI_SS_DDR   DDB2  // ~ slave select (atm unused)
#define SPI_MOSI_DDR DDB3  // 
#define SPI_MISO_DDR DDB4  // 
#define SPI_SCK_DDR  DDB5  // clock

#define SPI_PORT     PORTB
#define SPI_SS       PB2
#define SPI_MOSI     PB3
#define SPI_MISO     PB4
#define SPI_SCK      PB5

#define SPI_SLAVES_DDR     DDRD  // ~ slave select (real)
#define SPI_OUT_ENABLE_DDR DDD0
#define SPI_OUT_STORE_DDR  DDD1  // serial to parallel
#define SPI_CFG_MODE_DDR   DDD4
#define SPI_CFG_RESET_DDR  DDD5
#define SPI_CFG_SS_DDR     DDD6  // parallel to serial

#define SPI_SLAVES_PORT PORTD
#define SPI_OUT_ENABLE  PD0   // 0: output enable; 1: z-state
#define SPI_OUT_STORE   PD1
#define SPI_CFG_MODE    PD4   // 0: parallel in; 1: serial out
#define SPI_CFG_RESET   PD5
#define SPI_CFG_SS      PD6


#define out_enable()     output_low(SPI_SLAVES_PORT, SPI_OUT_ENABLE)
#define out_disable()    output_high(SPI_SLAVES_PORT, SPI_OUT_ENABLE)
#define out_store_low()  output_low(SPI_SLAVES_PORT, SPI_OUT_STORE)
#define out_store_high() output_high(SPI_SLAVES_PORT, SPI_OUT_STORE)

#define cfg_reset_enable()  output_low(SPI_SLAVES_PORT, SPI_CFG_RESET)
#define cfg_reset_disable() output_high(SPI_SLAVES_PORT, SPI_CFG_RESET)
#define cfg_select()        output_low(SPI_SLAVES_PORT, SPI_CFG_SS)
#define cfg_deselect()      output_high(SPI_SLAVES_PORT, SPI_CFG_SS)
#define cfg_mode_parallel() output_low(SPI_SLAVES_PORT, SPI_CFG_MODE)
#define cfg_mode_serial()   output_high(SPI_SLAVES_PORT, SPI_CFG_MODE)


// push shift register to storage register on positive edge
void out_store (void) {
    out_store_high();
    out_store_low();
}

void spi_master_init (void) {
    // MOSI, SCK, ~SS are outputs, MISO is left input
    SPI_DDR |= (1<<SPI_MOSI_DDR) | (1<<SPI_SCK_DDR) | (1<<SPI_SS_DDR);
    output_high(SPI_PORT, SPI_SS);  // ~SS inactive

    // Enable SPI, Master, SCK=fosc/128 
    SPCR = (1<<SPE) | (1<<MSTR) | (1<<SPR0) | (1<<SPR1);
}

// data to transmit if you only really want to read data
#define SPI_TRANSMIT_DUMMY 0b01010101

// send and/or receive data
char spi_master_transmit (char cData) {
    SPDR = cData;                 // start transmission
    while( !(SPSR & (1<<SPIF)) ); // wait for transmission complete 
    return SPDR;
}


int main (void) {
    uint8_t confl = 0;
    uint8_t confh = 0;
    uint8_t i = 0;

    // leds are outputs
    set_output(DDRC, DDC3);
    set_output(DDRC, DDC4);
    set_output(DDRC, DDC5);

    // led blink: devboard ok
    output_high(PORTC, PC3);
    output_high(PORTC, PC4);
    output_high(PORTC, PC5);
    delay_ms(500);
    output_low(PORTC, PC3);
    output_low(PORTC, PC4);
    output_low(PORTC, PC5);

    set_output(SPI_SLAVES_DDR, SPI_OUT_ENABLE_DDR);
    set_output(SPI_SLAVES_DDR, SPI_OUT_STORE_DDR);
    out_disable();

    set_output(SPI_SLAVES_DDR, SPI_CFG_RESET_DDR);
    set_output(SPI_DDR, SPI_SCK_DDR);
    set_output(SPI_SLAVES_DDR, SPI_CFG_SS_DDR);
    set_output(SPI_SLAVES_DDR, SPI_CFG_MODE_DDR);
    cfg_reset_disable();

    cfg_select();  // redundant, already low
    delay_ms(1);   // maybe redundant, should be one set-up time

    cfg_mode_parallel();
    delay_ms(1);

    // pulse clock to read in bits (not needed with 74165)
    output_high(SPI_PORT, SPI_SCK);

    cfg_mode_serial();
    delay_ms(1);

    spi_master_init();
    SPCR |= (1<<CPOL);  // otherwise can't read first bit

    // first octet
    output_high(PORTC, PC3);
    confl = spi_master_transmit(SPI_TRANSMIT_DUMMY);
    output_low(PORTC, PC3);

    // second octet
    output_high(PORTC, PC3);
    confh = spi_master_transmit(SPI_TRANSMIT_DUMMY);
    output_low(PORTC, PC3);

    output_high(SPI_PORT, SPI_SCK);
    cfg_deselect();
    cfg_reset_enable();

    // setup for stp
    SPCR &= ~(1<<CPOL);
    SPCR |= (1<<CPHA);
    while (1) {
	wdt_reset();

	// output to stp converter
	spi_master_transmit(confl);
	out_store();
	out_enable(); delay_ms(500); out_disable();

	spi_master_transmit(confh);
	out_store();
	out_enable(); delay_ms(500); out_disable();

	// == led blink: cycle finished
	output_high(PORTC, PC3);
	output_high(PORTC, PC4);
	output_high(PORTC, PC5);
	delay_ms(500);
	output_low(PORTC, PC3);
	output_low(PORTC, PC4);
	output_low(PORTC, PC5);
	delay_ms(500);
    }

    return 1;
}
