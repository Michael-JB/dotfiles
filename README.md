# dotfiles

This repository contains my dotfiles. I use [GNU Stow](https://www.gnu.org/software/stow/) to
manage them.

## Installation

```sh
git clone --recurse-submodules git@github.com:Michael-JB/dotfiles.git
git config submodule.recurse true # Recommended config for this repository
cd dotfiles
stow -t ~ nvim tmux zsh git
```

### tmux

```sh
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
stow -t ~ tmux
```

Then load tmux and press `ctlr + b` and `I` to install the plugins.
