#!/bin/bash

report() {
    local title=$1
    mkdir $title
    cp ~/.hmwk/reports/* ./$title
}

slide() {
    local title=$1
    cp ~/.hmwk/slides/templates.pptx ./$1.pptx
}

case "$1" in
report )
    shift
    report $1
    ;;
slide )
    shift
    slide $1
    ;;
esac
