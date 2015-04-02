#!/usr/bin/env zsh
local ret_status="%(?:%{$fg_bold[white]%}▸:%{$fg_bold[red]%}▸%s)"
local user_host='%{$fg[blue]%}%n%{$fg[white]%}@%{$fg[yellow]%}%m%{$reset_color%}'
local git_info='$(git_prompt_info)'
local current_dir='%{$fg[white]%}:%{$fg[green]%}%~%{$reset_color%}'
######### PROMPT #########
PROMPT="$user_host$current_dir $git_info
$ret_status%{$reset_color%} "
RPROMPT='%{$fg[white]%}%*%{$reset_color%}'
######### PROMPT #########
########## GIT ###########
GIT_CLEAN_COLOR="$fg[blue]"
GIT_DIRTY_COLOR="$fg[red]"
ZSH_THEME_GIT_PROMPT_PREFIX="$fg[white]"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$GIT_PROMPT_INFO%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$GIT_DIRTY_COLOR%}✘"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$GIT_CLEAN_COLOR%}✔"
ZSH_THEME_GIT_PROMPT_ADDED="%{$FG[082]%}✚%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$FG[166]%}✹%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DELETED="%{$FG[160]%}✖%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$FG[220]%}➜%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$FG[082]%}═%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$FG[190]%}✭%{$reset_color%}"
########## GIT ###########
