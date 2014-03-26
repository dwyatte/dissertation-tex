#!/bin/zsh

INKSCAPE_BIN=/Applications/Inkscape.app/Contents/Resources/bin/inkscape

for fig in `ls figs/*/*.svg`
do
    $INKSCAPE_BIN -f $fig -A `echo $fig | cut -d '.' -f1`.pdf &> /dev/null
done