/*
 * sketch.h
 *
 * Created: 18/12/2019 21:12:09
 *  Author: JordanW
 */ 


#ifndef SKETCH_H_
#define SKETCH_H_

#include <stdint.h>
#include <Arduino.h>
#include "ledmatrix.h"

#include <avr/interrupt.h>
#include <avr/power.h>
#include <avr/sleep.h>

#define NOTE_DO 0
#define NOTE_REb 1
#define NOTE_RE 2
#define NOTE_MIb 3
#define NOTE_MI 4
#define NOTE_FA 5
#define NOTE_SOLb 6
#define NOTE_SOL 7
#define NOTE_LAb 8
#define NOTE_LA 9
#define NOTE_SIb 10
#define NOTE_SI 11

#define GAMME1 0
#define GAMME2 12
#define GAMME3 24
#define GAMME4 36
#define GAMME5 48
#define GAMME6 60
#define GAMME7 72
#define GAMME8 84
#define GAMME9 96


const uint16_t noteFreq[] PROGMEM = 
  {33,35,37,39,41,44,46,49,52,55,58,62,65,69,73,78,82,87,92,98,104,110,
  117,123,131,139,147,156,165,175,185,196,208,220,233,247,262,277,294,
  311,330,349,370,392,415,440,466,494,523,554,587,622,659,698,740,784,
  831,880,932,988,1047,1109,1175,1245,1319,1397,1480,1568,1661,1760,
  1865,1976,2093,2217,2349,2489,2637,2794,2960,3136,3322,3520,3729,3951,
  4186,4435,4699,4978,5274,5588,5920,6272,6645,7040,7459,7902,8372,8870,
  9397,9956,10548,11175,11840,12544,13290,14080,14917,15804};


const uint8_t randomNotes[] PROGMEM = {
  0,1,3,8,6,0,0,75,38,35,12,41,32,75,44,68
  
};

const uint8_t NUM_NOTES = sizeof(noteFreq) / sizeof(uint16_t);
const uint8_t NUM_RANDOM_NOTES = sizeof(randomNotes) / sizeof(uint8_t);


#define NOP __asm__ __volatile__ ("nop\n\t")

#define PIN_SPEAKER			8
#define PIN_SHAKE			2

// TM1640 matrix pins
#define PIN_MTX_DATA		9
#define PIN_MTX_CLK			10
#define PIN_MTX_ENABLE		7

// only populated on programming jig
#define PIN_DEBUG_LED		13

#define FONT_BITMAP_WIDTH	5
#define FONT_SPACING		1
#define FONT_WIDTH			(FONT_BITMAP_WIDTH + FONT_SPACING)


#define MATRIX_NUMCOLUMNS	16
#define MATRIX_NUMROWS		8

uint8_t getGiftNumber(void);
void loadGiftName(uint8_t giftNum);
void onShake();

#endif /* SKETCH_H_ */