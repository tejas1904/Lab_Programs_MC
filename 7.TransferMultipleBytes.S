entry
		ldr		r0,=string1
		ldr		r1,=0x200   ;starting adress of new loaction
		
		
loop
		ldmia	r0!,{r3-r9}
		stmia	r1!,{r3-r9}
		
string1	dcd		'd','e','n','m','a','r','k',0
stop		b		stop
