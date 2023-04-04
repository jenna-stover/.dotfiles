# My Dotfiles
These are my dotfile configuration files for different software in Bash.
## .vimrc
This is my custom .vimrc configuration for Vim.
## .bashrc 
This is my custom .bashrc configuration for Bash.
## .gitignore
This file lets Git know to ignore certain files/directories. This allows these files/directories not to be pushed to GitHub.
## bashrc_custom
This file contains custom aliases and functions.
## linux.sh
This file checks if the OS type is 'Linux', and dumps an error message to the 'linuxsetup.log file if not. In the home directory, it creates the .TRASH directoriy, renames the .vimrc file to .bup_vimrc if it already exists, and overwrites the contents of the etc/vimrc file to the .vimrc file. Lastly, it appends a statement to the end of the .bashrc file in the home directory.
## cleanup.sh
This file reverses anything done in the linux.sh script. Within the home directory, it removes the .vimrc file, removes the custom line in the .bashrc file, and removes the .TRASH directory.
## Makefile
This file creates two targets call linux and clean. The linux target runs the linux.sh script within the bin directory and is dependent on the clean target, and the clean target runs the cleanup.sh script within the bin directory. 
