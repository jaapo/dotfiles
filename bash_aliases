_fun_colors() {
	cmds="ls grep"
	if [ "x$1" == "xno" ]; then
		unalias $cmds
		return
	fi 
	for c in $cmds; do
		alias $c="$c --color=auto"
	done
}

alias colrs=_fun_colors
