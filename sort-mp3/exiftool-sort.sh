#!/bin/bash

function filesort	{
	exiftool -Artist	
}

find $1 -iname \*.mp3 -exec filesort() {} \;
