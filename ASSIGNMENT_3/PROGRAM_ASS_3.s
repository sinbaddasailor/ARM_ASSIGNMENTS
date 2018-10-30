     PRESERVE8
     THUMB
     AREA     appcode, CODE, READONLY
     EXPORT __main
	 ENTRY 
__main  FUNCTION

	VMOV.F32 S1, #6
	VMOV.F32 S2, #20
	VMOV.F32 S3, #1
	VMOV.F32 S4, #1
	VMOV.F32 S5, #1
	VMOV.F32 S7, #1
Loop 
	 VCMP.F32 S2, S3;Comparison for Taylor Series.
	 VMRS.F32 APSR_nzcv,FPSCR
	 BLT stop;
	 VDIV.F32 S6, S1, S3
	 VMUL.F32 S4, S4, S6
	 VADD.F32 S5, S5, S4
	 VADD.F32 S3, S3, S7
	 B Loop; 
	 
stop B stop
	 ENDFUNC
	 END
