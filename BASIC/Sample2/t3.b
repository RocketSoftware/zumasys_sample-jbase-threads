
FOR I = 1 TO 100
	PRINT "t3: I = ":I
	SLEEP .1
NEXT I



EXECUTE "t2" CAPTURING X
CRT "t3: ** done ** [":X:"]"
