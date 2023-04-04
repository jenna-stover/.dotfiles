#!/bin/bash

#If the operating system type is not 'Linux', then it will echo an error message and dump it into linuxsetup.log using append. 
if [ $(uname) != 'Linux' ]; then
	echo "ERROR --> Incorrect operating system type." >> linuxsetup.log
	exit
fi

#makes directory named ".TRASH" if it does not exist already
mkdir -p ~/.TRASH/

#if .vimrc is in the home directory, the mv command renames the file '.vimrc' to '.bup_vimrc' and appends message to linuxsetup.log 
if [ -f ~/.vimrc ]; then
	mv ~/.vimrc ~/.bup_vimrc | echo "the file .vimrc was changed to .bup_vimrc" >>  linuxsetup.log
fi

#outputs the etc/vimrc file, and overwrites this to the .vimrc file in the home directory
cat etc/vimrc > ~/.vimrc

#uses append to add the statement to the end of the .bashrc file in the home directory
echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc
