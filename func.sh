#!/bin/bash

function dupa()
{
	local pretty_val="asdasd"
	echo "$pretty_val shit happens"
	echo "$pretty_val"
}

myval=$(dupa)
echo $myval
