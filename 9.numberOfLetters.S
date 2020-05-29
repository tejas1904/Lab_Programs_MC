entry
		ldr		r0,=string1
		
		
loop
		ldr		r7,[r0],#4
		cmp		r7,#0   
		addne	r1,r1,#1  ;r1 number of letters in string
		bne		loop
		
		
		
		
string1	dcd		'f','i','n','l','a','n','d',0

stop b stop