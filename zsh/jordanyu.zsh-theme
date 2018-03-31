local _ret_status="%(?:%{$fg_bold[green]%}\$:%{$fg_bold[red]%}\$)"
local _time="%{$reset_color%}[%{$fg[yellow]%}%D{%H:%M:%S}%{$reset_color%}]"
local _user_host="%{$reset_color%}%{$fg_bold[green]%}%n@%M%{$reset_color%}:"
local _path="%{$fg_bold[blue]%}%~"
PROMPT='${_time}${_user_host}${_path}${_ret_status}%{$reset_color%} '
RPROMPT='$(git_prompt_info)'


ZSH_THEME_GIT_PROMPT_PREFIX="$FG[075]($FG[078]"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="$FG[214]*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="$FG[075])%{$reset_color%}"
