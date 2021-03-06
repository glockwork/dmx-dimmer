// zc.c

#include "zc.h"

#include <inttypes.h>
#include <avr/io.h>

#include "slave.h"
#include "iocontrol.h"

inline uint16_t zc_calibrate (uint16_t old, uint16_t new) {
    if (old == new) return old;

    // if there was a counter overflow, then new will be very small, so
    // don't push towards an even smaller return value
    //if (old/2 > new) return old;

    if (old > new) return --old;
    if (old < new) return ++old;
    return new;  // should never happen
}

inline void zc_init (void) {
    set_input(ZC_DDR, ZC);     // interrupt input pin
    input_pullup(ZC_PORT, ZC);

    MCUCR |= _BV(ISC01);       // int on falling edge
    GIMSK |= _BV(INT0);        // enable INT0 interrupt
}

inline void degree_duration_counter_init (uint8_t deg_dur) {
    TCNT0 = 0;            // reset counter
    OCR0A = deg_dur;
    TIMSK |= _BV(OCIE0A); // Output Compare A int
    TCCR0A |= _BV(WGM01); // Clear Timer on Compare Match
    TCCR0B |= _BV(CS00);  // start counting, no prescaler
}

inline void degree_duration_counter_stop (void) {
    TCCR0B &= ~(_BV(CS00));   // stop counter
    TIMSK &= ~(_BV(OCIE0A));  // disable interrupt
}

inline void zc_duration_counter_init (void) {
    // reset counter
    // high byte must be written first
    TCNT1H = 0;
    TCNT1L = 0;

    TIMSK |= _BV(TOIE1);  // interrupt on overflow
    TCCR1B |= _BV(CS10);  // start counting, no prescaler
}
