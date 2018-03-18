umask 0077

SSH_AGENT_FILE="${HOME}/.ssh-agent.env"
if [ -z "${SSH_AGENT_PID}" ]; then
	if ! [ -e "$SSH_AGENT_FILE" ]; then
		ssh-agent >$SSH_AGENT_FILE
	fi
	. $SSH_AGENT_FILE
	if ! [ -S $SSH_AUTH_SOCK ]; then
		ssh-agent >$SSH_AGENT_FILE
		. $SSH_AGENT_FILE
	fi
fi
