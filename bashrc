set -o vi

PROMPT_COMMAND='hasjobs=$(jobs -p)'
PS1='$? \h:\w${hasjobs:+(\j)}\$ '

EDITOR="vim"
VISUAL="$EDITOR"

[ -e ".bashrc.local" ] && . ".bashrc.local"
