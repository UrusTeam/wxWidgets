#!/bin/sh

read -p "Are you sure? [y/n]:(n): " yesno
if [ "x$yesno" != "x" ] ; then
	git clean -fdx
	git reset --hard
	git submodule foreach git clean -fdx
	git submodule foreach git reset --hard
	echo "Reset ok"
else
	echo "Not reset"
fi
