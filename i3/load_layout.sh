#!/bin/sh
for layout in ~/.dotfiles/i3/layout/*
do
    workspace=$(basename -s .json $layout)
    i3-msg "workspace $workspace; append_layout $layout"
done
i3-msg "workspace 1"
