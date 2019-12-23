#include "sketch.h"

const char string_0[] PROGMEM = "0 - gift number not set ";
const char string_1[] PROGMEM = "PERSON 1 ";
const char string_2[] PROGMEM = "CAT A =^.^= ";
const char string_3[] PROGMEM = "PERSON 2 ";
const char string_4[] PROGMEM = "CAT B =^.^= ";
const char string_5[] PROGMEM = "PERSON 3 \x03 ";
const char string_6[] PROGMEM = "PERSON 4 ";
const char string_7[] PROGMEM = "CAT C =^.^= ";
const char string_8[] PROGMEM = "PERSON 5 ";
const char string_9[] PROGMEM = "PERSON 6 ";
const char string_10[] PROGMEM = "10 - oops ";
const char string_11[] PROGMEM = "11 - oops ";
const char string_12[] PROGMEM = "12 - oops ";
const char string_13[] PROGMEM = "13 - oops ";
const char string_14[] PROGMEM = "14 - oops ";
const char string_15[] PROGMEM = "15 - oops ";

const char *const string_table[] = {
		string_0, string_1, string_2, string_3, 
		string_4, string_5, string_6, string_7,
		string_8, string_9, string_10, string_11,
		string_12, string_13, string_14, string_15
	};
	
#define BUFFERLEN 64	
char marqueeBuffer[BUFFERLEN] = "";
uint16_t marqueeBufferLen = 0;
uint16_t marqueeWidth = 0;

volatile bool wasShaken = 0;

uint8_t getGiftNumber(void)
{
	uint8_t result = 0;
	
	// DDR = data direction register
	// configure pins A3, A2, A1 and A0 as inputs (clears the direction bits to 0), 
	// don't touch other pins of port C
	DDRC &= 0xF0;
	
	// PORT = pin output / pull-ups
	// turn on pull-ups for A3, A2, A1 and A0
	PORTC |= 0x0F;
	
	// wait that the pull-ups come on and that the input voltage stabilizes
	delayMicroseconds(100);
	
	// PIN = port input
	// if the gift number jumpers have a solder blob on them, they will be pulled low
	// if not, they will be pulled up by the weak pull-up resistor of the micro controller
	result = PINC & 0x0F;
	
	// turn off pull-ups as to reduce energy consumption
	PORTC &= 0xF0;
	
	result = 15 - result;
	
	return result;
}


void loadGiftName(uint8_t giftNum)
{
	int i;
	char c;
	
	// copy the string byte by byte from program memory into RAM
	// we have less RAM available than program memory, so the gift names
	// are stored in program memory.
	for(i=0;i<(BUFFERLEN-1);i++)
	{
		c = pgm_read_byte_near(string_table[giftNum] + i);
		
		marqueeBuffer[i] = c;
		
		// the strings are zero-terminated
		if(c == 0)
			break;
	}
	// even if we fill the buffer, make sure we always terminate by zero
	marqueeBuffer[BUFFERLEN-1] = 0;
}


void onShake(void)
{	
	wasShaken = true;
}


void setup(void)
{	
	int i=0;
	char c;
	uint8_t giftNum = getGiftNumber();
	
	pinMode(PIN_DEBUG_LED, OUTPUT);
	digitalWrite(PIN_DEBUG_LED, HIGH);
	
	pinMode(PIN_SHAKE, INPUT);
	pinMode(PIN_SPEAKER, OUTPUT);	
	
	matrixSetPower(true);
	
	// first time we insert the batteries, show the gift number
	snprintf(marqueeBuffer, BUFFERLEN, "%d", giftNum);	
	matrixDrawString(marqueeBuffer, strlen(marqueeBuffer), 0, false);
	delay(50);
	tone(PIN_SPEAKER, 1760, 50);
	delay(1500);
	
	// load the gift name from program memory and prepare the variables to make it scroll
	loadGiftName(giftNum);
	marqueeBufferLen = strlen(marqueeBuffer);
	marqueeWidth = marqueeBufferLen * FONT_WIDTH;
			
	attachInterrupt(digitalPinToInterrupt(PIN_SHAKE), onShake, LOW);
}


void loop(void)
{	
	uint16_t progress;
	uint16_t segments;
	uint16_t maxScroll, numScrolls;
	uint16_t i;
	
	// we just woke up or just booted, set up
	digitalWrite(PIN_SPEAKER, LOW);
	pinMode(PIN_SPEAKER, OUTPUT);
	matrixSetPower(true);
	
	pinMode(PIN_DEBUG_LED, OUTPUT);
	digitalWrite(PIN_DEBUG_LED, 1);

	// now we start waiting for more shakes. If we're not shaken enough
	//  we'll eventually decay into sleep again
	for(progress = 500; progress > 0 && progress < 5000;)
	{
		noInterrupts();
		if(wasShaken)
		{
			wasShaken = false;
			progress += 60;
		}
		else
		{
			progress -= 10;
		}
		interrupts();
		
		if(progress < 1000)
		{
			// count silently
			matrixClear();
			noTone(PIN_SPEAKER);
		} 
		else if(progress < 2400)
		{
			// show some pixels and do some sound glitches to show that something
			// is happening if they shake the gift
			matrixDrawStars();
			tone(PIN_SPEAKER, rand() % 400, 10 + (rand() % 40));
		}
		else
		{
			// show a progress bar
			segments = progress - 2400;
			// here, segments [0; 2600]. We need a number between 0 and 12, but it's 
			// ok if it's higher (it will just max out)
			segments /= 200;
			matrixDrawProgressBar(segments);
			tone(PIN_SPEAKER, progress);
		}
		
		delay(25);
	}
	
	if(progress == 0)
	{
		// the gift wasn't shaken enough
		goto sleep;
	}
	
	// at this point, we can reveal the name, do a little animation
	noTone(PIN_SPEAKER);
	matrixDrawProgressBar(12);
	delay(300);
	
	for(i=0;i<3;i++)
	{
		tone(PIN_SPEAKER, 1000);
		matrixDrawProgressBar(12);
		delay(100);
		
		noTone(PIN_SPEAKER);
		matrixClear();
		delay(100);
	}
	
	noTone(PIN_SPEAKER);
	
	// reveal the name, wait before we start scrolling
	matrixDrawString(marqueeBuffer, marqueeBufferLen, 0, 1);
	delay(1000);
	
	// scroll the name 4 times then shut down
	maxScroll = 750 - (750 % marqueeWidth) + marqueeWidth + MATRIX_NUMCOLUMNS;
	for(i=0;i < maxScroll;i++)
	{
		bool bRepeat = i < (maxScroll - (MATRIX_NUMCOLUMNS * 2));
		matrixDrawString(marqueeBuffer, marqueeBufferLen, i, bRepeat);
		delay(20);
	}
	
sleep:
	// disable IO pins to save energy
	digitalWrite(PIN_SPEAKER, LOW);
	pinMode(PIN_SPEAKER, INPUT);
	
	digitalWrite(PIN_DEBUG_LED, 0);
	pinMode(PIN_DEBUG_LED, INPUT);
	
	matrixSetPower(false);
	
	set_sleep_mode(SLEEP_MODE_PWR_DOWN);
	sleep_enable();

	// this is where we go to sleep, this function will only return 
	// once we woke up due to an external interrupt
	sleep_mode();
	
	// now we just woke up, start again as our loop() function will be 
	// called again and again by main()
	sleep_disable();
	wasShaken = false;
}

