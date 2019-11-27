#!/bin/bash
#Author: dlinuxguy@gmail.com
#Version: 1.0

source ../modules/html.mod

htmlHeader
addForm "/cgi-bin/addnumber.cgi"
echo "A: <input type=\"text\" name=\"a\">"
newLine
echo "B: <input type=\"text\" name=\"b\">"
newLine
echo "C: <input type=\"text\" name=\"c\">"
newLine
endForm Add
htmlFooter
