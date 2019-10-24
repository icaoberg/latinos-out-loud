#!/bin/bash 

if [ -f latinos-out-loud ]; then
	rm -f latinos-out-loud
fi

wget -nc https://rss.art19.com/latinos-out-loud

if [ -f latinos-out-loud ]; then
	cat latinos-out-loud 
	cat latinos-out-loud | grep enclosure | cut -d"=" -f2 | cut -d'"' -f2 | xargs wget -nc
	rm -f latinos-out-loud
fi
