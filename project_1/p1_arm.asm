			;		DATASETS
set_1		dcd		10, 20, 10, 20, 20, 501
set_2		dcd		2, 4, 8, 16, 32, 64, 128, 256, 512
set_3		dcd		1, 2, 3, 4, 5, 16, 17, 18, 19, 20, 501
set_4		dcd		501

			
			;		Register Map:
			;		r0	current addr
			;		r1	current number
			;		r2	<15
			;		r5	>= 15
			
			
			adr		r0, set_1		; change the dataset here

				
			
program_exit
			end
