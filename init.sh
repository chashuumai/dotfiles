#!/bin/zsh

#for file in `find $HOME/dotfiles -name '.*' | grep -v 'dotfiles/.git$' | perl -nle 'm!dotfiles/(.+)$! and print $1'`; do
#    ln -s $HOME/dotfiles/$file $HOME/$file
#done

ln -sf $HOME/dotfiles/git/.gitignore $HOME/
ln -sf $HOME/dotfiles/git/.gitconfig $HOME/
ln -sf $HOME/dotfiles/.zshrc $HOME/
ln -sf $HOME/dotfiles/.vim $HOME/
ln -sf $HOME/dotfiles/.vimrc $HOME/
ln -sf $HOME/dotfiles/.npmrc $HOME/
ln -sf $HOME/dotfiles/.screenrc $HOME/
