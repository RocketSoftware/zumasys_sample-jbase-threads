* Sample program to demonstrate the use of Thread statements
* Author : Martin Bailey
* Copyright 2003 TEMENOS Holdings NV

    INCLUDE JBC.h
    threadlist = ""
    slowhandle = ""
    fasthandle = ""
    
    JBASETHREADStatus(threadlist) 
    CRT "Thread status=" : CHAR(13) : CHAR(10) : CHANGE(CHANGE(threadlist,@VM,"   "),@AM,CHAR(13) : CHAR(10))
    
    rc = JBASETHREADCreate("slow","","",slowhandle)
    CRT "slow started - rc=" : rc : " handle=" : slowhandle

    SLEEP 0.5

    JBASETHREADStatus(threadlist)
    CRT "Thread status=" : CHAR(13) : CHAR(10) : CHANGE(CHANGE(threadlist,@VM,"   "),@AM,CHAR(13) : CHAR(10))
    
    rc = JBASETHREADCreate("fast","","",fasthandle)
    CRT "fast started - rc=" : rc : " handle=" : fasthandle

    SLEEP 0.5
    
    JBASETHREADStatus(threadlist)
    CRT "Thread status=" : CHAR(13) : CHAR(10) : CHANGE(CHANGE(threadlist,@VM,"   "),@AM,CHAR(13) : CHAR(10))
    
    FOR X = 1 TO 10
        SLEEP 10
        CRT "Thread " : X : "Root=" : @USER.ROOT : " Thread=" : @USER.THREAD
    NEXT

    SLEEP 0.5
    JBASETHREADStatus(threadlist)
    CRT "Thread status=" : CHAR(13) : CHAR(10) : CHANGE(CHANGE(threadlist,@VM,"   "),@AM,CHAR(13) : CHAR(10))
    
