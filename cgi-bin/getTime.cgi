#!/bin/bash
#Author: dlinuxguy@gmail.com
#Version: 1.0



source ../modules/html.mod

htmlHeader


echo "<div class=roundbox  id=\"ind\">India Time</div>"
newLine
newLine
echo "<div class=roundbox  id=\"cal\">California Time</div>"
newLine

echo "<div class=roundbox  id=\"status\">Current status</div>"

newLine
newLine
echo "<div class=roundbox  onclick=\"getTime()\" id=\"but\">Refresh Time</div>"

	echo "<script>"
	echo "function getTime() {"

	echo "var xhttp = new XMLHttpRequest();"
	echo "xhttp.onreadystatechange = function() {"
	echo "if (this.readyState == 4 && this.status == 200)  {"
	echo "document.getElementById(\"ind\").innerHTML = this.responseText;}};"
	echo "xhttp.open(\"GET\", \"/cgi-bin/getIndiaTime.cgi\", true); xhttp.send();"

	echo "var xhttp = new XMLHttpRequest();"
	echo "xhttp.onreadystatechange = function() {"
	
	echo "if (this.readyState == 4 && this.status == 200)  {"
	echo "document.getElementById(\"cal\").innerHTML = this.responseText  ;}"

	echo "document.getElementById(\"status\").innerHTML = this.readyState  "

	echo "};"
	echo "xhttp.open(\"GET\", \"/cgi-bin/getCaliforniaTime.cgi\", true); xhttp.send();"

	echo "}"

	echo "</script>"



htmlFooter

