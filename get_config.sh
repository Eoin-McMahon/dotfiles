#!/bin/bash

echo "Running Setup..."

# Clones bare repo and also a temp normal repo which contains the working tree
git clone \
    --separate-git-dir=$HOME/dotfiles \
    https://github.com/Eoin-McMahon/dotfiles.git \
    $HOME/dotfiles-TEMP

# Copies files from temp repo to their respective locations on your pc
rsync --recursive --verbose --exclude '.git' --exclude 'README.md' --exclude 'get_config.sh' $HOME/dotfiles-TEMP/ $HOME/

# remove the temp repo
rm -rf $HOME/dotfiles-TEMP

# dont show untracked files
/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME config --local status.showUntrackedFiles no

# use config alias instead of git command when working with config files
echo "alias config=\"/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME/\"" >> $HOME/.bashrc

