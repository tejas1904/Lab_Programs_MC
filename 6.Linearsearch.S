entry
		
		ldr		r0,=values
		mov		r2,#-50  ;key element
		mov		r3,#0
		mov		r5,#-1   ;r5 is -1 if not found else the position if key in array
		
loop
		ldr		r1,[r0],#4
		cmp		r1,r2
		moveq	r5,r3
		add		r3,r3,#1
		cmp		r3,#7
		bne		loop
		
values	dcd		-10,-20,30,-50,60,45,78

stop b stop