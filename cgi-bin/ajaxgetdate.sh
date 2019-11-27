#!/bin/bash
#Author: dlinuxguy@gmail.com
#Version: 1.0



source ../modules/html.mod

htmlHeader


echo "<p id=\"showdate\">Date goes here</p>"

addAjaxButton "Get date" f1 showdate "/cgi-bin/getdate.sh"

htmlFooter
