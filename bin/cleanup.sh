#!/bin/bash

#uses the rm command to force remove the .vimrc file in the home directory
rm -f ~/.vimrc

#removes the line containing "bashrc_custom", and does not replace this pattern with anything
sed -i "/bashrc_custom/d" ~/.bashrc

#force removes 'TRASH' directory in the home directory
rm -rf ~/.TRASH/
