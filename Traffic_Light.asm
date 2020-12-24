;8085-simulator: https://github.com/bibekdahal/8085-simulator

;NORTH :
;RED A7, YELLOW A5, GREEN A3

;EAST :
;RED C7, YELLOW C6, GREEN C5

;SOUTH :
;RED B7, YELLOW B5, GREEN B3

;WEST :
;RED C3, YELLOW C2, GREEN C1

;PORT A   : 20H
;PORT B   : 21H
;PORT C   : 22H
;PORT CWR : 23H


MVI A, 80H;
OUT 23H; TO WORK IN CWR MODE

MVI D, 1; FOR LOOP
LOOP: 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;Green for North and RED For all the other direction
MVI A, 88 ; C7 & C3 ON
OUT 22 

MVI A, 80 ; B7 ON
OUT 21

MVI A, 08 ; A3 ON 
OUT 20

;delay 30 seconds 
;now, time to turn on yellow light for 5 seconds :)
MVI A, 20 ; A3 ON
OUT 20

; delay 5 seconds 

MVI A, 80 ;A5 OFF & A7 ON
OUT 20


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;NOW FOR EAST DIRECTION 
MVI A, 28 ; C5, C3 ON & C7 OFF
OUT 22

;delay 30 seconds
;now, time to turn on yellow light for 5 seconds :)
MVI A, 48 ; C6, C3 ON & C5 OFF
OUT 22
;5 seconds delay

MVI A, 88; C3,C7 ON & C6 OFF
OUT 22

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;NOW FOR SOUTH DIRECTION
MVI A, 08 ; B3 ON B7 OFF
OUT 21

;delay 30 seconds
;now, time to turn on yellow light for 5 seconds :)
MVI A, 20 ; B5 ON B3 OFF
OUT 21

;5 seconds delay
MVI A, 80
OUT 21

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;NOW FOR WEST DIRECTION
MVI A, 82 ; C1, C7 ON & C3 OFF
OUT 22

;delay 30 seconds
;now, time to turn on yellow light for 5 seconds :)

MVI A, 84 ; C7, C2 ON & C1 OFF
OUT 22

;5 seconds delay

JNZ LOOP
