entry
		ldr		r0,=string1
		ldr		r1,=string2
		
		
loop
		ldr		r7,[r0],#4
		ldr		r8,[r1],#4
		cmp		r7,r8
		bgt		high
		blt		low
		cmp		r7,#0
		bne		loop
		
low		ldr		r2,=0x00    ;r2 will be 0x00 if string1 lower than string2 or equals
		b		stop
high		ldr		r2,=0xff	 ;r2 will be 0x00 if string1 higher than string2
		b		stop
		
stop		b		stop
		
		
string1	dcd		'h','o','n','e','y',0
string2	dcd		'h','o','n','a','y',0
