local user='%{$FG[201]%}%n%{$reset_color%}'
local host='%{$FG[220]%}%m%{$reset_color%}'
local pwd='%{$FG[032]%}%~%{$reset_color%}'
local arrow='%{$FG[051]%}➤ %{$reset_color%}'

# primary prompt: user@host::dir, shows git info if available
PS1="${user}@${host}::${pwd}\$(git_prompt_info)\$(hg_prompt_info)
${arrow}"
PS2='%{$FG[088]} %{$reset_color%}'

# right prompt: return code
RPS1='%(?..%{$FG[203]%}%?%{$reset_color%})'

# git settings
ZSH_THEME_GIT_PROMPT_PREFIX=" ${FG[075]}(${FG[078]}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="${FG[214]}*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="${FG[075]})%{$reset_color%}"

# hg settings
ZSH_THEME_HG_PROMPT_PREFIX=" ${FG[075]}(${FG[078]}"
ZSH_THEME_HG_PROMPT_CLEAN=""
ZSH_THEME_HG_PROMPT_DIRTY="${FG[214]}*%{$reset_color%}"
ZSH_THEME_HG_PROMPT_SUFFIX="${FG[075]})%{$reset_color%}"
