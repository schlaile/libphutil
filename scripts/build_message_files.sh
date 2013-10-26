#!/bin/sh

set -e

ROOT=`dirname $0`"/../"

cd $ROOT

ROOT=`pwd`

cd src

RESDIR=$ROOT/resources/internationalization

filelist=$RESDIR/filelist

find . -name "*.php" > $filelist

for i in $RESDIR/po/*.po ; do
    xgettext -L php -k -kpht -j -f $filelist -o $i
done

