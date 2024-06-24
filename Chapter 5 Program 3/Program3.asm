; Date: 3/27/2024

INCLUDE Irvine32.inc

.data
inputPrompt1 BYTE "Enter the first interger: ",0
inputPrompt2 BYTE "Enter the second integer: ",0
sumPrompt BYTE "The sum of the two integers: ",0

.code
main PROC
	
		call Clrscr						; Clears the console window
		mov   dh,10                     ; row 10
		mov   dl,20                     ; column 20
		call  GotoXY                    ; locate cursor

		mov edx, OFFSET inputPrompt1	; Prompts user for the first integer
		call WriteString
		call ReadInt					; Reads the inputted integer
		mov ebx,eax						; Moves the inputted integer to ebx

		call Clrscr						; Clears the console window
		mov   dh,10                     ; row 10
		mov   dl,20                     ; column 20
		call  GotoXY                    ; locate cursor

		mov edx, OFFSET inputPrompt2	; Prompts user for the second integer
		call WriteString
		call ReadInt					; Reads the inputted integer
		add eax,ebx						; Adds the two sums

		call Clrscr						; Clears the console window
		mov   dh,10                     ; row 10
		mov   dl,20                     ; column 20
		call  GotoXY                    ; locate cursor

		mov edx, OFFSET sumPrompt		; Prompts sum string
		call WriteString			
		call WriteInt					; Displays the sum

		call Crlf
		call Crlf
		call WaitMsg

	exit
main ENDP
END main