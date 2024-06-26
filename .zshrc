PROMPT='💤 %B%F{202}%1~/%f%b '

HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=5000
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt incappendhistory
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

autoload -U compinit && compinit
zstyle ':completion:*' menu select
setopt always_to_end
setopt complete_in_word

source ~/projects/dotfiles/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
alias ls="ls --color"

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '%F{205}(%b)%f'

setopt PROMPT_SUBST
RPROMPT=\$vcs_info_msg_0_

# Make zsh autocomplete with up arrow
autoload -Uz history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "$terminfo[kcuu1]" history-beginning-search-backward-end
bindkey "$terminfo[kcud1]" history-beginning-search-forward-end

source ~/projects/dotfiles/kubectl-plugin.zsh
alias rprompt='source ~/projects/dotfiles/toggle-prompt.sh'

export PATH="$PATH:/opt/nvim-linux64/bin"
