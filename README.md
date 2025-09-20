# dotfiles

This repository contains my dotfiles. I use [GNU Stow](https://www.gnu.org/software/stow/) to
manage them.

## Pre-requisites

- Stow; install with `brew install stow`

## Installation

```sh
git clone --recurse-submodules git@github.com:Michael-JB/dotfiles.git
cd dotfiles
git config submodule.recurse true # Recommended config for this repository
stow -t ~ nvim tmux zsh git ghostty
```
### zsh

- Add the following to the top of `~/.zshrc`:
    ```sh
    source $HOME/.config/zsh/base-config.zsh
    ```

### tmux

- Install with `brew install tmux`
- Install plugins:
    ```sh
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
    ```
- Load tmux and press `ctrl + b` followed by `I` to install the plugins.

### Ghostty

- Install with `brew install ghostty`
- CommitMono nerd font (follow install instructions here: https://commitmono.com/)

### Neovim

- Install with `brew install neovim`
- See https://github.com/Michael-JB/papaya-nvim for further install instructions
