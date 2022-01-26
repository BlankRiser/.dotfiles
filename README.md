# .dotfiles

## Instructions
1. Clone this repo
2. Make `install.sh` executable and run it 
```
chmod +x install.sh
./install.sh
```
3. Open new window to inititate `zsh`

## Configuring nvim

1. `init.vim` file to configure nvim is located `.dotfiles/nvim/.config/nvim/init.vim` which is still accessible as we are using [stow](https://www.gnu.org/software/stow/manual/stow.html) to create a refrence to `$HOME` directory.
2. After making changes you have to source `init.vim` while you are in the editor itself
```vim
:wq #saves the file
:so % #source init.vim
```

## Creating Git store
Using credential helper to temporarily save credentials for 900 seconds(15min)
Use this method if not using ssh
```
git config --global credential.helper 'cache --timeout=36000'
```
## Tweaks
Some tweaks for a better experience on Pop OS

### Title window not showing for VS Code
```Extensions -> Pop Shell Setting -> Enabler Show Window Titles```
