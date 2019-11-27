#########################################
#Author: dlinuxguy@gmail.com
#Version: 1.0
#########################################

source ../modules/query.mod
source ../modules/css.mod

htmlHeader()
{
        echo "Content-Type: text/html"
        echo ""
        echo "<html>"
	echo "<head>"
	addStyle
	echo "</head>"
        echo "<body>"
}


textHeader()
{
	echo "Content-Type: text/html"
        echo ""
}

echol()
{
	echo "${1}"
	newLine
}

htmlFooter()
{
	echo "</body>"
	echo "</html>"
}

newLine()
{
	echo "<br>"
}

addForm()
{
	echo "<form action=\"${1}\" method=\"GET\">"
}

addTextInput()
{
	echo "<input type=text name=$1>"
}

endForm()
{
	echo "<input type=\"submit\" value=\"${1}\"></form>"
}

preTagStart()
{
	echo "<pre>"
}

preTagEnd()
{
	echo "</pre>"
}

#Args: FunctionName ElementID URLtoCall
addAjax()
{
	echo "<script>"
	echo "function ${1}() { var xhttp = new XMLHttpRequest();"
	echo "xhttp.onreadystatechange = function() {"
	echo "if (this.readyState == 4 && this.status == 200)  {"
	echo "document.getElementById(\"${2}\").innerHTML = this.responseText;}};"
	echo "xhttp.open(\"GET\", \"${3}\", true); xhttp.send();}"
	echo "</script>"
}

#Args: ButtonName FunctionName ElementIDtoUpdate URLtoCall
addAjaxButton()
{
	echo "<button type="button" onclick=\"${2}()\">${1}</button>"
	echo "<script>"
        echo "function ${2}() { var xhttp = new XMLHttpRequest();"
        echo "xhttp.onreadystatechange = function() {"
        echo "if (this.readyState == 4 && this.status == 200)  {"
        echo "document.getElementById(\"${3}\").innerHTML = this.responseText;}};"
        #echo "document.getElementById(\"${3}\").value = this.responseText;}};"
        echo "xhttp.open(\"GET\", \"${4}\", true); xhttp.send();}"
        echo "</script>"
}
	
