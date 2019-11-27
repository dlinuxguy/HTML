#!/bin/bash
#Author: dlinuxguy@gmail.com
#Version: 1.0




source ../modules/html.mod

#QUERY_STRING='var1=val1&var2=val2&var3=val3'
parseQuery_String $QUERY_STRING

htmlHeader
preTagStart
	echo "Args : ${!QS[@]}"
	echo "Vals : ${QS[@]}"
preTagEnd
htmlFooter

