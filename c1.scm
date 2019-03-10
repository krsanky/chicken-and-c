(import chicken.format chicken.foreign)

(printf "hey!\n")

#>
	extern void f1();
<#
(define ff1 (foreign-lambda void "f1"))

(ff1)

