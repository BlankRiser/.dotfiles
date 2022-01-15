autoload -Uz compinit
compinit

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# use nix
if [ -e /home/otheos/.nix-profile/etc/profile.d/nix.sh ]; then . /home/otheos/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

# source plugins
source ~/.zsh_plugins.sh

# aliases
alias ls='ls -al'
alias vim='nvim'

# key bindings
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey "\e[3~" delete-char 
bindkey "\e[1;6D" beginning-of-line
bindkey "\e[1;6C" end-of-line

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
