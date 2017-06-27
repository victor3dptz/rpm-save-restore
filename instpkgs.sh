#!/bin/bash 

awk '{
	if (!match($1,"@")) {
	
	if (match($1,"noarch")) {
		print substr($1,1,index($1,".noarch")-1)
	} else {
		if (match($1,"x86_64")) {
			print substr($1,1,index($1,".x86_64")-1)
		} else {
			if (match($1,"i686")) {
				print substr($1,1,index($1,".i686")-1)
			} else {
				if (match($1,"i386")) {
					print substr($1,1,index($1,".386")-1)
				}
				}
		}
	}}
	}' list.tmp

#rm -f list.tmp
