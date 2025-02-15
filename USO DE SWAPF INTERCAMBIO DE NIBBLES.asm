;Autor: Calle Condori Rodrigo
;LO QUE HACE SWAPF ES INTERCAMBIAR UN NIBBLE.Un nibble es una 
;unidad de 4 bits.
;SI 10 = 0000 1010 = 0X0A APLICANDO SWAPF --> 160 = 1010 0000 =0XA0
     LIST  P=16F877A
     INCLUDE <P16F877A.INC>
;-------VARIABLES_AUXILIARES------+
     DATO_1      EQU   0X20      ;|
     RESULTADO   EQU   0X21      ;|
;---------------------------------+

          ORG    0X00		    ;EL PROGRAMMA SE ENSAMBLA DESDE ESTA DIRECCIÓN
          GOTO   CON_INICIALES

;-------LIMPIA_LOS_REGISTRO-------+  
CON_INICIALES:                   ;|
          CLRF   DATO_1          ;|
          CLRF   RESULTADO       ;|
          CLRW                   ;|
;---------------------------------+

;-----PROGRAMA_PRINCIPAL(MAIN)----+
TASK:                            ;|
          MOVLW  D'10'           ;|
          MOVWF  DATO_1          ;|
          SWAPF  DATO_1,W        ;|
;---------------------------------+
RESPUESTA:
          MOVWF  RESULTADO
          GOTO   RESPUESTA
          END