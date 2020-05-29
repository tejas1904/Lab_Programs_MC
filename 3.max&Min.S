entry
numbers	dcb		64,15,96,10,65
		ldr		r7,=numbers
		
		ldrb		r5,[r7]
		mov		r0,r5 ;r0 min number
		mov		r1,r5 ;r1 max number
		mov		r4,#4    ;should be number of elements-1 in this program
		
loop		ldrb		r5,[r7,#1]!
		
		cmp		r5,r1
		movhi	r1,r5
		
		cmp		r5,r0
		movls	r0,r5
		
		subs		r4,r4,#1
		bne		loop


stop b stop