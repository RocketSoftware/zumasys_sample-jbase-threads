INCLUDE JBC.h

PRINT "Multi threaded program"
PRINT "Reading records from 4 files at once ... "

thread_list_initial = ""
thread_list   		= ""
thread_handle_1		= ""
thread_handle_2		= ""
thread_handle_3		= ""
thread_handle_4		= ""
			     
JBASETHREADStatus( thread_list_initial )

* start some threads
t1 = SYSTEM(12)

rc = JBASETHREADCreate( "mult_r1", "", "", thread_handle_1 )
rc = JBASETHREADCreate( "mult_r2", "", "", thread_handle_2 )
rc = JBASETHREADCreate( "mult_r3", "", "", thread_handle_3 )
rc = JBASETHREADCreate( "mult_r4", "", "", thread_handle_4 )

FOR I = 1 TO 2000
	SLEEP 1 

	JBASETHREADStatus( thread_list )

	IF thread_list EQ thread_list_initial THEN
		BREAK
	END

NEXT I

t2 = SYSTEM(12)

time_taken = t2 - t1

PRINT "Time taken: ":time_taken

