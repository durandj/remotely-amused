# vim:ft=zsh ts=2 sw=2 sts=2

# Must use Powerline font, for \uE0A0 to render.
ZSH_THEME_GIT_PROMPT_PREFIX=" on %{$fg[magenta]%}\uE0A0 "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}!"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%}?"
ZSH_THEME_GIT_PROMPT_CLEAN=""

ZSH_THEME_RUBY_PROMPT_PREFIX="%{$fg_bold[red]%}‹"
ZSH_THEME_RUBY_PROMPT_SUFFIX="›%{$reset_color%}"

ZSH_THEME_SSH_SESSION_PROMPT_PREFIX="%{$fg[gray]%}$(id --user --name)%{$reset_color%}%{$fg[green]%}@%{$reset_color%}%{$fg[red]%}$(hostname)%{$reset_color%}"
ZSH_THEME_LOCAL_SESSION_PROMPT_PREFIX=""
if [ -n "${SSH_TTY}" ]; then
    ZSH_THEME_SESSION_PROMPT_PREFIX="$ZSH_THEME_SSH_SESSION_PROMPT_PREFIX:"
else
    ZSH_THEME_SESSION_PROMPT_PREFIX="$ZSH_THEME_LOCAL_SESSION_PROMPT_PREFIX"
fi

PROMPT='
$ZSH_THEME_SESSION_PROMPT_PREFIX%{$fg_bold[green]%}%~%{$reset_color%}$(git_prompt_info) ⌚ %{$fg_bold[red]%}%*%{$reset_color%}
$ '

RPROMPT='$(ruby_prompt_info)'
