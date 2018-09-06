INCLUDE JBC.h

thread_list_initial = ""
thread_list   		= ""
thread_handle_1		= ""
thread_handle_2		= ""
thread_handle_3		= ""
thread_handle_4		= ""
thread_handle_5		= ""
thread_handle_6		= ""
thread_handle_7		= ""

* first setup our files

EXECUTE "DELETE-FILE FILE_T1"
EXECUTE "DELETE-FILE FILE_T2"

EXECUTE "CREATE-FILE FILE_T1 TYPE=JP 1 63"
EXECUTE "CREATE-FILE FILE_T2 TYPE=JP 1 63"

JBASETHREADStatus( thread_list_initial )
CRT "Thread IDs running : ":CHANGE(thread_list_initial,@AM,"   ")

* start some threads

rc = JBASETHREADCreate( "t1", "", "", thread_handle_1 )
CRT "t1 started. rc [":rc:"] handle [":thread_handle_1:"]"
rc = JBASETHREADCreate( "t1", "", "", thread_handle_2 )
CRT "t1 started. rc [":rc:"] handle [":thread_handle_2:"]"
rc = JBASETHREADCreate( "t2", "", "", thread_handle_3 )
CRT "t2 started. rc [":rc:"] handle [":thread_handle_3:"]"
rc = JBASETHREADCreate( "t2", "", "", thread_handle_4 )
CRT "t2 started. rc [":rc:"] handle [":thread_handle_4:"]"
rc = JBASETHREADCreate( "t3", "", "", thread_handle_5 )
CRT "t3 started. rc [":rc:"] handle [":thread_handle_5:"]"
rc = JBASETHREADCreate( "f_t1", "", "", thread_handle_6 )
CRT "f_t1 started. rc [":rc:"] handle [":thread_handle_6:"]"
rc = JBASETHREADCreate( "f_t2", "", "", thread_handle_7 )
CRT "f_t2 started. rc [":rc:"] handle [":thread_handle_7:"]"


FOR I = 1 TO 2000
	SLEEP 1 

	JBASETHREADStatus( thread_list )
	CRT "Thread IDs running : ":CHANGE(thread_list,@AM,"   ")

	* if all threads have ended then the lists will be the same, so we end
	IF thread_list EQ thread_list_initial THEN
		BREAK
	END

NEXT I
