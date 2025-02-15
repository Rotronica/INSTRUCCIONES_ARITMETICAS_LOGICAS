;Autor: Calle Condori Rodrigo
;El operador "bitwise NOT" es una operación que se realiza a nivel 
;de bits. También se conoce como complemento a nivel de bits. 
;Esta operación invierte cada bit individual en una representación 
;binaria de un número. La operación "bitwise NOT" convierte 0s en 
;1s y 1s en 0s.
;Por ejemplo, si se tienes el número binario 01011010, 
;el "bitwise NOT" de este número sería 10100101. 
;Cada bit en la representación original es invertido.
     LIST  P=16F877A
     INCLUDE <P16F877A.INC>
     DATO_1      EQU   0X20
     RESULTADO   EQU   0X21  

          ORG    0X00            ;SE ENSAMBLA A PARTIR DE LA DIRECCION 0X00
          GOTO   CON_INCIALES    ;IR A LA ETIQUETA CON_INCIALES:
          ORG    0X05
CON_INCIALES:
          CLRF   DATO_1
          CLRF   RESULTADO
          CLRW
INICIO:                          
          MOVLW  B'11110010'     ;MOVER EL VALOR BINARIO AL REGISTRO 'W'
          MOVWF  DATO_1          ;MOVER EL REGISTRO DE TRABAJO AL REGISTRO 0X20

; EL COMPLEMENTO SERIA 00001101 EN HEXADECIMAL '0X0D'
CALCULAR:
          COMF   DATO_1,W        ;REALIZA EL COMPLEMENTO DEL VALOR GUARDADO EN EL REGISTRO '0X20'
                                 ;GUARDA EL RESULTADO EN EL REGISTRO DE TRABAJO 'W'
          MOVWF  RESULTADO       ;MOVER EL REGISTRO DE TRABAJO AL REGISTRO 0X21
          GOTO   CALCULAR
          END