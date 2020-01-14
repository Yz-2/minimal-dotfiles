#!/bin/bash

DOT_FILES=(.zshrc .vimrc)

for file in ${DOT_FILES[@]}
do
        ln -snf $HOME/minimal-dotfiles/$file $HOME/$file
done


