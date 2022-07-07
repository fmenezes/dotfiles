# based on https://github.com/ohmyzsh/ohmyzsh/blob/d87ab251c7fe18626b2d0c4e4a184e7bed7c508b/themes/robbyrussell.zsh-theme

function path_prompt_info() {
  echo "%{$fg[cyan]%}%~%{$reset_color%} "
}

function cursor_error_prompt_info() {
  echo "%{$fg_bold[red]%}%? ✗%{$reset_color%} "
}

function cursor_clean_prompt_info() {
  echo "$ "
}

function cursor_prompt_info() {
  echo "%(?:$(cursor_clean_prompt_info):$(cursor_error_prompt_info))"
}

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}[%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%}]"
ZSH_THEME_GIT_PROMPT_DIRTY="$ZSH_THEME_GIT_PROMPT_CLEAN%{$fg[yellow]%}±"

PROMPT='$(path_prompt_info)$(git_prompt_info)$(cursor_prompt_info)'
