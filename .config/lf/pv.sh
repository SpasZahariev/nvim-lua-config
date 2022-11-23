#!/bin/bash

case "$1" in
    *.tar*) tar tf "$1";;
    *.zip) unzip -l "$1";;
    *.rar) unrar l "$1";;
    *.7z) 7z l "$1";;
    *.pdf) pdftotext "$1" -;;
    *.jpg) viu "$1";;
    *.jpeg) viu "$1";;
    *.png) viu "$1";;
    *.doc) catdoc < "$1";;
    *.docx) docx2txt < "$1";;
    *) bat --theme=base16 --style=numbers --terminal-width $(($2-5)) -f "$1" ;;
esac
