# Install updates
echo "Updating..."
sudo apt update
sudo apt full-upgrade

# Install gnome-tweaks, to enable maximize in pop os
echo "Installing gnome-tweaks"
sudo apt install gnome-tweaks

# install snap
echo "Installing snap"
sudo apt install snapd

# install snap apps
echo "Installing snap apps"
sudo snap install beekeeper-studio spotify vlc postman dbeaver-ce
sudo snap install code --classic
sudo snap install notable --classic
sudo snap install node --classic

# Install nix
echo "Installing Nix"
curl -L https://nixos.org/nix/install | sh

# source nix
echo "Source nix"
~/.nix-profile/etc/profile.d/nix.sh

# install nix packages
echo "Installing nix packages"
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
echo "using stow to link files in .dotfiles to $HOME directory"
stow zsh
stow git
stow nvim

# add zsh to valid login shells
command -v zsh | sudo tee -a /etc/shells

# use zsh as default shell
echo "Using zsh as default shell"
sudo chsh -s $(which zsh) $USER

# bundle zsh plugins
echo "bundling zsh_plugins using anitbody"
antibody bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins.sh

# Install extrac media codecs
sudo apt-get install ubuntu-restricted-extras


