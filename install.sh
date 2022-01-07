# Install nix
sudo apt-get install neovim

# source nix
~/.nix-profile/etc/profile.d/nix.sh

# install nix packages
nix-env -iA \
        nixpkgs.git \
        nixpkgs.zsh \
        nixpkgs.antibody \
        nixpkgs.neovim \
        nixpkgs.stow \
        nixpkgs.tmux \
        nixpkgs.fzf \
        nixpkgs.bat \
        nixpkgs.direnv

# stow
stow zsh
stow git
stow nvim

# add zsh to valid login shells
command -v zsh | sudo tee -a /etc/shells

# use zsh as default shell
sudo chsh -s $(which zsh) $USER

# bundle zsh plugins
antibody bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins.sh

