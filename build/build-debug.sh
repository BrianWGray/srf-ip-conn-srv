#!/bin/sh
self=`readlink "$0"`
if [ -z "$self" ]; then
	self=$0
fi
scriptname=`basename "$self"`
scriptdir=${self%$scriptname}

cd $scriptdir
scriptdir=`pwd`

cmake -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Debug .
make -j4
