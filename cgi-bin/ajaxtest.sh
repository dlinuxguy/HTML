#!/bin/bash
#Author: dlinuxguy@gmail.com
#Version: 1.0



source ../modules/html.mod

htmlHeader


echo "<p class=roundbox size=20 id=\"demo\">Hi!</p>"

echo "<div class=solidbox id=\"demo2\">Div</div>"
echo "<button type="button" onclick=\"loaddoc()\">Change to Hello</button>"
addAjax loaddoc demo "/hello.txt"

addAjaxButton "Change to Bye" bye demo "/bye.txt"
addAjaxButton "Change Div" bye demo2 "/bye.txt"

htmlFooter
