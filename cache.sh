#!/bin/bash
dirs=`ls .`
for dir in $dirs
do
	`git rm --cached $dir`
done
