#include <avr/io.h>
#include <util/delay.h>

int main(void) {
  // set PORTB5 as output
  DDRB = DDRB | (1 << DDB5);

  while (1) {
    PORTB = PORTB | (1 << PORTB5);

    _delay_ms(0500);

    PORTB = PORTB & ~(1 << PORTB5);

    _delay_ms(0500);
  }
}
