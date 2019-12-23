/*
 * ledmatrix.cpp
 *
 * Created: 21/12/2019 12:39:59
 *  Author: JordanW
 */ 

#include "ledmatrix.h"


TM1640 module(PIN_MTX_DATA, PIN_MTX_CLK);
TM16xxMatrix matrix(&module, MATRIX_NUMCOLUMNS, MATRIX_NUMROWS);


void matrixClear(void)
{
	matrix.setAll(false);
}


void matrixDrawString(char *string, uint16_t len, uint16_t scroll, bool allowRepeat)
{
	uint8_t x;
	uint8_t bmpX;
	uint16_t strWidth = len * FONT_WIDTH;	
	uint16_t curScroll = scroll;
	uint16_t strIndex;
	
	for(x=0;x<MATRIX_NUMCOLUMNS;x++)
	{
		curScroll = (scroll + x) % strWidth;
		
		if((x + scroll) >= strWidth && !allowRepeat)
		{
			matrix.setColumn( x, 0x00 );
		}
		else
		{
			// x position in the font bitmap
			bmpX = curScroll % FONT_WIDTH;
			// current character index in the string
			strIndex = (curScroll - bmpX) / FONT_WIDTH;
		
			if(bmpX < FONT_BITMAP_WIDTH)
			{
				matrix.setColumn( x, pgm_read_byte_near( font + ((string[strIndex])*FONT_BITMAP_WIDTH) + bmpX));
			}
			else
			{
				matrix.setColumn( x, 0x00 );
			}			
		}
	}
}


void matrixDrawStars(void)
{
	uint8_t bitVal = 0;
	uint8_t i,j;
	
	for(i=0;i<MATRIX_NUMCOLUMNS;i++)
	{
		bitVal = 0;
		for(j=0;j<7;j++)
		{
			if(rand()%16 == 0)
			{
				bitVal |= (1 << j);
			}
		}
		matrix.setColumn(i, bitVal);
	}
}


// segments : 0-12
void matrixDrawProgressBar(uint8_t segments)
{
	uint8_t i;
	
	matrix.setColumn(0, B01111111);
	matrix.setColumn(1, B01000001);
	for(i=0;i<12;i++)
	{
		if(i < segments)
			matrix.setColumn(i+2, B01011101);
		else
			matrix.setColumn(i+2, B01000001);			
	}
	matrix.setColumn(14, B01000001);
	matrix.setColumn(15, B01111111);
	
}


void matrixSetPower(bool bOn)
{
	if(bOn)
	{		
		pinMode(PIN_MTX_ENABLE, OUTPUT);		
		pinMode(PIN_MTX_CLK, OUTPUT);		
		pinMode(PIN_MTX_DATA, OUTPUT);
		
		delayMicroseconds(100);
		
		digitalWrite(PIN_MTX_ENABLE, HIGH);
		digitalWrite(PIN_MTX_CLK, HIGH);
		digitalWrite(PIN_MTX_DATA, HIGH);
		
		delay(5);
		
		module.setupDisplay(1, 7);
		
		module.clearDisplay();
		matrix.setAll(false);
	}
	else
	{
		module.clearDisplay();
		matrix.setAll(false);
		
		module.setupDisplay(0, 0);
		
		delayMicroseconds(100);
		
		digitalWrite(PIN_MTX_CLK, LOW);
		digitalWrite(PIN_MTX_DATA, LOW);
		digitalWrite(PIN_MTX_ENABLE, LOW);
		
		// set the pins as high impedance to save power
		pinMode(PIN_MTX_CLK, INPUT);
		pinMode(PIN_MTX_DATA, INPUT);
		pinMode(PIN_MTX_ENABLE, INPUT);
	}
}

