
OPEN "FILE_T2" TO FH ELSE STOP 201, "FILE_T1"

ITEMID  = "ItemX"
MY_DATA = "sresdfsmdlmfklsdmkfmkxcvblah_some_data"

FOR I = 1 TO 1000

	IID = ITEMID:I

	WRITE MY_DATA TO FH,IID ON ERROR
		PRINT "Error, writing to file"
	END

	SLEEP .1
NEXT I


CLOSE FH

