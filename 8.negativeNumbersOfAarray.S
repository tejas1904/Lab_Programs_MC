entry
		
		ldr		r0,=values
		ldr		r1,[r0]
		mov		r3,#5
		
loop
		cmp		r1,#0
		addmi	r2,r2,#1    ;r2 number of negatives
		ldr		r1,[r0,#4]!
		subs		r3,r3,#1
		bne		loop
		
values	dcd		-10,-20,30,-50,60

stop b stop