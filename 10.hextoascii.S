entry		
		ldr		r7,=0x100
		ldr		r0,=0xABCD  ;2 digit hexadecimal
		ldr		r1,=0x000F  ;mask
		mov		r3,#4	;number of digits in hex
		
loop		and		r2,r0,r1   ;perform and operation with mask
		cmp		r2,#9	;if resultihg is <=9 do lower else do greater
		blhi		greater
		blls		lower
		ror		r0,r0,#4
		subs		r3,r3,#1
		bne		loop
		beq		stop
		
		
		
greater	mov		r6,r2      ;do this if greater
		sub		r6,r6,#10
		add		r6,r6,#65  ;subtract 10 and add 65 to conver to ascii
		str		r6,[r7],#4
		mov		pc,lr
		
lower	mov		r6,r2
		str		r6,[r7],#4
		mov		pc,lr
		
		
		
stop		b		stop
