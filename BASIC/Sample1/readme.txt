These programs illustrate the use of the new thread keywords for
jBASE jBASIC introduced in jBASE 4.1. Note - jBC.h must be INCLUDEd
to use these keywords. For more information on these statements,
consult the Programmers Reference Manual (PRM)

1. BASIC and CATALOG all three programs;

	BASIC . thread.b
	CATALOG . thread.b
	BASIC . slow.b
	CATALOG . slow.b
	BASIC . fast.b
	CATALOG . fast.b

2. Run the thread program.
```
C:\jBASE\CurrentVersion\samples\Threads\BASIC\Sample1>thread.exe
Thread status=
E0849900000000000000000000000000
slow started - rc=0 handle=7000DA03000000000000000000000000
Thread status=
E0849900000000000000000000000000
7000DA03000000000000000000000000
fast started - rc=0 handle=1002DA03000000000000000000000000
Thread status=
E0849900000000000000000000000000
7000DA03000000000000000000000000
1002DA03000000000000000000000000
Fast 1
Fast 2
Fast 3
Fast 4
Slow 1
Fast 5
Fast 6
Fast 7
Fast 8
Fast 9
Fast 10
Slow 2
```
