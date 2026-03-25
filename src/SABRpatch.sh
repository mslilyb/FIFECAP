#!/bin/bash

echo "processing:" $1


name=`echo $1 | cut -f1 -d '.'`
gtfile=./ground_truth.gz
tmpfile=`echo $name`_gt.tmp.gz
outfile=`echo $name`.patched.gz

zcat $1 | cut -f1 | gzip > $tmpfile
#echo `echo $name`.trunc.gz

if [ ! -f "$gtfile" ]; then
	mv $tmpfile $gtfile
else
	zcat $tmpfile | cmp -  <(zcat $1 | cut -f1) > /dev/null 2>&1
	if [ $? -ne 0 ]; then
		echo "Error! Input data mismatch!"
		exit 1
	fi
	rm $tmpfile
fi
zcat $1 | cut -f2 | gzip > $outfile