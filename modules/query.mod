########################################
#Author: dlinuxguy@gmail.com
#Version: 1.0
#######################################

declare -A QS

parseQuery_String()
{
	QUERY_STRING="$1"
	declare -i f=1
	para=`echo "$QUERY_STRING" | cut -f${f} -d'&'`
	while [ "${para}" != "" ]
	do
		f=$f+1
		arg=`echo ${para} | cut -f1 -d'='`
		val=`echo ${para} | cut -f2 -d'='`
		QS[$arg]=$val
		para=`echo "$QUERY_STRING" | cut -f${f} -d'&'`
	done

		
}
