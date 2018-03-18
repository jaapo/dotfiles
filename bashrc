set -o vi

shopt -s histappend
HISTCONTROL=ignoreboth
HISTSIZE=10000
HISTFILESIZE=20000

PROMPT_COMMAND='hasjobs=$(jobs -p)'
PS1='$? \h:\w${hasjobs:+(\j)}\$ '

#window title
case "$TERM" in
st-*|screen*)
	PS1="\[\e]0;\u@\h:\w\a\]$PS1"
	;;
*)
	;;
esac

EDITOR="vim"
VISUAL="$EDITOR"

[ -f ~/.bash_aliases ] && . ~/.bash_aliases
[ -f ~/.bashrc.local ] && . ~/.bashrc.local
