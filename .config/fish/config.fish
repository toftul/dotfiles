#
# ~/.config/fish/config.fish
#


# vim bindings
fish_vi_key_bindings
# fish_default_key_bindings

function fish_greeting
    # none
end

# environmental variables
set -x EDITOR nvim
set -x VISUAL nvim
set -x TERMINAL st
set -x PATH $HOME/.local/bin $PATH # add to PATH local bin
set -x FZF_DEFAULT_OPTS "--reverse --height 40%" # fzf settings
set -x RANGER_LOAD_DEFAULT_RC FALSE # make ranger read only local config
#set -x GTK_USE_PORTAL 1 # for firefox to use KDE file dialog



# set abbreviations 
abbr cp "cp -i"
abbr df "df -h"
abbr rm "rm -i"
abbr mv "mv -i"
abbr mkdir "mkdir -p"
abbr pacs "sudo pacman -S"
abbr pacup "sudo pacman -Syyu"
abbr up "sudo pacman -Syyu"
abbr pacr "sudo pacman -Rsc"
abbr pacss "pacman -Ss"
abbr yayup "yay -Syu"
abbr yays "yay -S"
abbr yayss "yay -Ss"
abbr jl "jupyter lab"
abbr jn "jupyter notebook"
abbr swapclear "sudo swapoff -a && sudo swapon -a"

# set prompt
function fish_prompt --description 'Write out the prompt'
    set -l color_cwd
    set -l suffix
    switch "$USER"
    case root toor
        if set -q fish_color_cwd_root
            set color_cwd $fish_color_cwd_root
        else
            set color_cwd $fish_color_cwd
        end
        set suffix '#'
    case '*'
        set color_cwd $fish_color_cwd
        set suffix '>'
    end

    echo -n -s (set_color red) "[" (set_color bryellow) "$USER" (set_color normal) @  (set_color brblue) (prompt_hostname) ' ' (set_color dda16c) (prompt_pwd) (set_color red) "]" (set_color normal) "$suffix "
end


function fish_mode_prompt
    # none - disable vim mode indicator
end
