#!/bin/bash
#Author: dlinuxguy@gmail.com
#Version: 1.0

source ../modules/html.mod

textHeader

parseQuery_String $QUERY_STRING

declare -i sum
for i in ${!QS[@]}
do
	sum=$sum+${QS[$i]}
done

echo "Sum = $sum"

