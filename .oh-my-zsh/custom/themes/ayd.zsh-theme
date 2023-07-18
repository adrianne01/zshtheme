typeset +H _current_dir="%{$FG[014]%}%~%{$reset_color%}"
typeset +H _status_code="%(?..%{$FG[001]%}%?%{$reset_color%}"
typeset +H _date_time="%{$FG[012]%}〔%{$reset_color%}%{$FG[010]%}%W %T%{$reset_color%}%{$FG[012]%} 〕%{$reset_color%}"

function _user_host() {
  local me
  if [[ -n $SSH_CONNECTION ]]; then
    me="%{$FG[011]%}%n%{$reset_color%}@%{$FG[013]%}%m%{$reset_color%}"
  elif [[ $LOGNAME != $USERNAME ]]; then
    me="%{$FG[011]%}%n%{$reset_color%}"
  else
    me="%{$FG[011]%}unknown%{$reset_color%}"
  fi
  if [[ -n $me ]]; then
    echo "$me"
  fi
}

# primary prompt: dir, git info(if any)
PS1='
${_current_dir} $(git_prompt_info)
%{$FG[005]%}》%{$reset_color%}'

# right prompt: user@host, status code
RPS1='%{$(echotc UP 1)%}${_date_time}$(_user_host)%{$(echotc DO 1)%}${_status_code}'

# git settings
ZSH_THEME_GIT_PROMPT_PREFIX="${FG[012]}『${FG[010]}\uE0A0"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="${FG[011]} シ%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="${FG[012]} 』%{$reset_color%}"
