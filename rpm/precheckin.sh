#!/bin/sh

PACKAGE=qt5-qpa-hwcomposer-plugin
VARIANTS="sbj boston"

for variant in $VARIANTS; do
    INFILE=$PACKAGE.spec.in
    OUTFILE=$PACKAGE-$variant.spec
    echo " $INFILE => $OUTFILE"
    sed -e "s/__VARIANT__/$variant/g" < $INFILE > $OUTFILE
done
