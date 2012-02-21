// dmx dimmer, transceiver module

#ifndef _MASTER_H_
#define _MASTER_H_

#include <avr/io.h>

// ===== CONFIG =====

#define F_CPU 16000000  // 16 MHz

// ===== PINOUT =====

// leds
#define LEDS_DDR DDRB
#define LED0_DDR DDB0
#define LED1_DDR DDB1

#define LEDS_PORT PORTB
#define LEDBASE   PB0


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


#define SPI_SLAVES_DDR    DDRC  // ~ slave select (real)
#define SPI_OUT_OK_DDR    DDC0
#define SPI_OUT_CHAN1_DDR DDC1
#define SPI_OUT_CHAN0_DDR DDC2
#define SPI_OUT_SS1_DDR   DDC3
#define SPI_OUT_SS2_DDR   DDC5
#define SPI_OUT_SS3_DDR   DDC4

#define SPI_SLAVES_PORT PORTC
#define SPI_OUT_OK      PC0
#define SPI_OUT_CHAN1   PC1
#define SPI_OUT_CHAN0   PC2
#define SPI_OUT_SS1     PC3
#define SPI_OUT_SS2     PC5
#define SPI_OUT_SS3     PC4

#define SPI_SLAVES_PIN PINC
#define SPI_OUT_OK_PIN PINC0


#define SPI_CFG_DDR       DDRD
#define SPI_CFG_MODE_DDR  DDD6
#define SPI_CFG_RESET_DDR DDD7

#define SPI_CFG_PORT    PORTD
#define SPI_CFG_MODE    PD6   // 0: parallel in; 1: serial out
#define SPI_CFG_RESET   PD7

#define USART_DDR     DDRD   // RS485 DDR for Read Enable (Receiving)
#define USART_RXD_DDR DDD0   // receive
#define USART_TXD_DDR DDD1   // drive/transmit
#define USART_NRE_DDR DDD2   // Active Low Read Enable

#define USART_PORT PORTD
#define USART_TXD  PD1
#define USART_NRE  PD2

#define USART_PIN     PIND
#define USART_RXD_PIN PIND0

// ===== FUNCTIONS =====

// leds
#define leds_init() LEDS_DDR |= _BV(LED0_DDR)|_BV(LED1_DDR)
#define led_on(led)     LEDS_PORT &= ~(_BV( LEDBASE+led ))
#define led_off(led)    LEDS_PORT |=   _BV( LEDBASE+led )
#define led_toggle(led) LEDS_PORT ^=   _BV( LEDBASE+led )

#endif /* _MASTER_H_ */
