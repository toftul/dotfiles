#!/bin/bash

if [[ "$(hostname)" == "core" ]]; then
    xdg-open "$(rg --no-messages --files ~/Documents \
        ~/Downloads ~/Music ~/Videos ~/data/gdrive ~/data/gdriveShared \
        -g "!{*.srt,*.rar,*.txt,*.zip,*.nfo}" | rofi -threads 0 \
        -dmenu -sort -sorting-method fzf -i -p ">>>")"
elif [[ "$(hostname)" == "metalab-desktop" ]]; then
    xdg-open "$(rg --no-messages --files ~/Documents \
        ~/Downloads ~/Music ~/Videos ~/gdrive ~/gdriveShared \
        -g "!{*.srt,*.rar,*.txt,*.zip,*.nfo}" | rofi -threads 0 \
        -dmenu -sort -sorting-method fzf -i -p ">>>")"
elif [[ "$(hostname)" == "arch" ]]; then
    xdg-open "$(rg --no-messages --files ~/Documents \
        ~/Downloads ~/Music ~/Videos ~/gdrive ~/gdriveShared \
        -g "!{*.srt,*.rar,*.txt,*.zip,*.nfo}" | rofi -threads 0 \
        -dmenu -sort -sorting-method fzf -i -p ">>>")"
else
    xdg-open "$(rg --no-messages --files ~/Documents \
        ~/Downloads ~/Music ~/Videos ~/gdrive ~/gdriveShared \
        -g "!{*.srt,*.rar,*.txt,*.zip,*.nfo}" | rofi -threads 0 \
        -dmenu -sort -sorting-method fzf -i -p ">>>")"
fi

