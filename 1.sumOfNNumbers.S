entry
		ldr		r7,=0x200
		ldr		r0,=values
		ldrh		r1,[r0]
		mov		r2,#0
		mov		r3,#5
loop		add		r2,r2,r1  ;r2 final sum
		ldrh		r1,[r0,#4]!
		subs		r3,r3,#1
		bne		loop
		str		r2,[r7]   ;sum store in 0x200 memory location
values	dcw		10,20,30,50,60

stop b stop
