#!/usr/bin/env zsh
local USER_HOST='%{$fg[blue]%}%n %{$fg[white]%}at %{$fg[green]%}%m%{$reset_color%}'
local RETURN_CODE="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

local GIT_INFO='%{$fg[white]%}on $(git_prompt_info)%{$reset_color%}'
local CURRENT_DIR='%{$fg[white]%}in %{$fg[green]%}%~%{$reset_color%}'
local RUBY_RVM='%{$fg[gray]%}$(rvm-prompt i v g)%{$reset_color%}'
local COMMAND_TIP='%{$terminfo[bold]$fg[blue]%}$(wget -qO - http://www.commandlinefu.com/commands/random/plaintext | sed 1d | sed '/^$/d' | sed 's/^/║/g')%{$reset_color%}'
######### PROMPT #########
PROMPT="$USER_HOST $CURRENT_DIR $GIT_INFO
%{$fg[white]%}$%{$reset_color%} "
RPS1='${RETURN_CODE}'
RPROMPT='%{$fg[green]%}[%*]%{$reset_color%}'
######### PROMPT #########
########## GIT ###########
GIT_CLEAN_COLOR="$fg[blue]"
GIT_DIRTY_COLOR="$fg[red]"
ZSH_THEME_GIT_PROMPT_PREFIX="$fg[green]"
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
