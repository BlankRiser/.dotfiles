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

`Extensions -> Pop Shell Setting -> Enabler Show Window Titles`

### Adding extra repo to package manager

```
sudo apt install software-properties-common
```

### Deadsnakes is a PPA with newer releases

```
sudo add-apt-repository ppa:deadsnakes/ppa
```

### Pacakges required to build a package from scratch

```
sudo apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev wget
```

### Disabling Suspend, Hibernation, and hybrid-sleep

```
sudo systemctl mask sleep.target suspend.target hibernate.target hybrid-sleep.target

# To enable them again
sudo systemctl unmask sleep.target suspend.target hibernate.target hybrid-sleep.target
```

### Mounting NTFS drives
Use [ntfs-3g](https://github.com/tuxera/ntfs-3g) to fix the drive after unmounting it.
```
# Unmount the drive before running the command below
sudo ntfsfix /dev/sda1
```
If you still are not able to write on that disk, use ntfs-3g to mount the drive for verbose error
```
mount -t ntfs-3g /dev/sda1 /mnt/windows
# or
ntfs-3g /dev/sda1 /mnt/windows
```

### Errors

- [dash to dock icons disappear after sleep mode](https://askubuntu.com/questions/1370884/why-do-dash-to-dock-icons-disappear-after-sleep-mode-ubuntu-21-10) : Uninstall Gnome Tweaks
