entry
		
		ldr		r0,=values
		ldr		r1,[r0]
		mov		r2,#0
		mov		r3,#5
loop		add		r2,r2,r1  ;r2 final sum
		ldr		r1,[r0,#4]!
		subs		r3,r3,#1
		bne		loop
		
values	dcd		10,20,30,50,60

stop b stop