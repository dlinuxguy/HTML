#!/bin/bash
#Author: dlinuxguy@gmail.com
#Version: 1.0

source ../modules/html.mod


function default()
{
	htmlHeader
	preTagStart
	echo "default function"
	preTagEnd
}

default
