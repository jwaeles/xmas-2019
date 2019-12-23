/*
 * ledmatrix.h
 *
 * Created: 21/12/2019 12:40:19
 *  Author: JordanW
 */ 


#ifndef LEDMATRIX_H_
#define LEDMATRIX_H_

#include <stdint.h>
#include <Arduino.h>
#include <TM1640.h>
#include <TM16xxMatrix.h>
#include "glcdfont.c"
#include "sketch.h"


void matrixSetPower(bool bOn);
void matrixClear(void);
void matrixDrawString(char *string, uint16_t len, uint16_t scroll, bool allowRepeat);
void matrixDrawStars(void);
void matrixDrawProgressBar(uint8_t segments);


#endif /* LEDMATRIX_H_ */