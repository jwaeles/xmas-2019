@ECHO OFF

SET part=m328p
SET tool=atmelice_isp
SET batchdir=%CD%
SET avrdude=^"%batchdir%\util\avrdude.exe^"
SET hexfile=^"%batchdir%\Xmas2019.hex^"

:Start

	CLS
	COLOR 08
	ECHO Will flash fuses and firmware, make sure all connections are OK and then press ENTER

	PAUSE

	ECHO Configuring fuses...

	%avrdude% -p %part% -c %tool% -U lfuse:w:0xe2:m -U hfuse:w:0xd9:m -U efuse:w:0xff:m

	IF %ERRORLEVEL% NEQ 0 (
		ECHO ERROR: avrdude returned %ERRORLEVEL%
		GOTO Error
	)

	ECHO "uploading binary..."

	%avrdude% -p %part% -c %tool% -U flash:w:%hexfile%:i

	IF %ERRORLEVEL% NEQ 0 (
		ECHO ERROR: avrdude returned %ERRORLEVEL%
		GOTO Error
	)

	COLOR 2f

	ECHO ** SUCCESS ** 

	PAUSE
	GOTO Start

:Error
	COLOR 4f
	ECHO.
	ECHO ********* ERROR **************
	ECHO.
	PAUSE
	
	GOTO STart