#!/bin/bash
xdg-open "$(rg --no-messages --files ~/Documents \
    ~/Downloads ~/Music ~/Videos ~/gdrive ~/gdriveShared \
    -g "!{*.srt,*.rar,*.txt,*.zip,*.nfo}" | rofi -threads 0 \
    -dmenu -sort -sorting-method fzf -i -p ">>>")"
