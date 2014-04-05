#!/bin/zsh

#for file in `find $HOME/dotfiles -name '.*' | grep -v 'dotfiles/.git$' | perl -nle 'm!dotfiles/(.+)$! and print $1'`; do
#    ln -s $HOME/dotfiles/$file $HOME/$file
#done

ln -sf $HOME/dotfiles/git/.gitignore $HOME/
ln -sf $HOME/dotfiles/git/.gitconfig $HOME/
ln -sf $HOME/dotfiles/.zshrc $HOME/
