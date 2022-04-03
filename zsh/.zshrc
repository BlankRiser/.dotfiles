autoload -Uz compinit
compinit

# Android Studio
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
NVS_HOME="$HOME/.nvs"

# Bit.dev
export PATH=$HOME/bin:$PATH

# Setting for the new UTF-8 terminal support in Lion
LC_CTYPE=en_US.UTF-8
LC_ALL=en_US.UTF-8


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
alias ls='ls -al' # use '\' and original command to not use alias, '\ls' will run ls
alias vim='nvim'

# key bindings
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey "\e[3~" delete-char 
bindkey "\e[1;6D" beginning-of-line
bindkey "\e[1;6C" end-of-line

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export PATH=$HOME/bin:$PATH
export NVS_HOME="$HOME/.nvs"
[ -s "$NVS_HOME/nvs.sh" ] && . "$NVS_HOME/nvs.sh"
