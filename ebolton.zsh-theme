if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="yellow"; fi

username() {
    echo "%F{cyan}%n%{$reset_color%}"
}

directory() {
    echo "%~"
}

current_time() {
    echo "%F{green}%*%f"
}

pointer() {
    echo "%F{cyan}:%f%B%F{yellow}$%f%b%F{cyan}:%f"
}

PROMPT='
$(username)%B%F{yellow}|%f%b$(current_time)%B%F{yellow}| $(directory) %f%b
$(pointer) '

RPROMPT='%B%{$fg[$NCOLOR]%} $(git_prompt_info)%{$reset_color%}%b'

ZSH_THEME_GIT_PROMPT_PREFIX="git:"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_CLEAN=""

# See https://geoff.greer.fm/lscolors/
# export LSCOLORS="exfxcxdxbxbxbxbxbxbxbx"
export LSCOLORS="ExFxBxDxCxegedabagacad"
export LS_COLORS="di=34;40:ln=35;40:so=32;40:pi=33;40:ex=31;40:bd=31;40:cd=31;40:su=31;40:sg=31;40:tw=31;40:ow=31;40:"

