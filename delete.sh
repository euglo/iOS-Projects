#!/bin/bash
dirs=`ls`
for dir in $dirs
do
	`rm -rf $dir/.git`
done
