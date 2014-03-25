#!/bin/zsh

for fig in `ls figs/*/*.eps`
do
    epspdf $fig
done