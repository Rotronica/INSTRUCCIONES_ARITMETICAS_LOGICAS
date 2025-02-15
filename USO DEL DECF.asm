;Autor:Calle Condori Rodrigo
        LIST P=16877A
		INCLUDE <P16F877A.INC>
;DECREMENTO:
	DATO1      EQU    0X20
	DATO2      EQU    0X21
CONFIGURACION:
           BSF    STATUS,RP0
           MOVLW  0X06
		   MOVWF  ADCON1
           MOVLW  B'111111'
           MOVWF  TRISA
           BCF    STATUS,RP0
           CLRF   PORTA
           MOVLW  D'8'
           MOVWF  DATO1
MAIN:
           BTFSS  PORTA,0
           GOTO   MAIN

           DECF   DATO1,F
           BTFSS  STATUS,Z
           GOTO   MAIN
           GOTO   LIMPIAR
LIMPIAR:
           ;CLRF   DATO1
           BCF    STATUS,Z
           GOTO   MAIN
           END
