These programs illustrate the use of the new thread keywords for
jBASE jBASIC introduced in jBASE 4.1. Note - jBC.h must be INCLUDEd
to use these keywords. For more information on these statements,
consult the Programmers Reference Manual (PRM)

1. Compile all the programs.  For this example we will use the jcompile verb that will compile the executables/dlls directly into the sample directory.  You can also copy these source files to your normal sandbox area and use BASIC and COMPILE normally.  For more information see the jBase documentation around how jBase builds C code.

```
jcompile thread.b
jcompile slow.b
jcompile fast.b
```

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
