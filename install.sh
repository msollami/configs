#!/bin/sh

cwd=$PWD
cd $HOME
ln -s $cwd/.zshrc .zshrc
ln -s $cwd/.zsh_aliases .zsh_aliases
ln -s $cwd/.zsh_functions .zsh_functions
ln -s $cwd/.vimrc .vimrc
ln -s $cwd/.tmux.conf .tmux.conf
ln -s $cwd/.gitignore .gitignore
install -d $HOME/.ipython/profile_default
cd $HOME/.ipython/profile_default/
ln -s $cwd/ipython_config.py ipython_config.py
cd $cwd

