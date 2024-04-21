#!/bin/bash

source ~/zsh-stuff/kubectl-prompt.zsh

if [[ "$RPROMPT" == "\$vcs_info_msg_0_" ]]
then
	RPROMPT='%F{221} ⎈($ZSH_KUBECTL_PROMPT)'
else
	RPROMPT=\$vcs_info_msg_0_
fi
