#!/usr/bin/env zsh


## save user's current working directory
last_working_directory=$PWD
## go to user home directory for default setup.
cd ~


## install marlonrichert/zsh-snap . start
echo " \n \n Please keep the default installation directory unless you know what you are doing. \n \n"
git clone --depth 1 -- https://github.com/marlonrichert/zsh-snap.git ~/zsh-snap/zsh-snap
chmod +x ~/zsh-snap/zsh-snap/znap.zsh
source ~/zsh-snap/zsh-snap/znap.zsh
echo 'source ~/zsh-snap/zsh-snap/znap.zsh'>>~/.zshrc
## install marlonrichert/zsh-snap . EOF


## install ohmyzsh via zsh-snap. start
## Install ohmyzsh outside zsh-snap may cause compatibility issues between ohmyzsh and zsh-snap. 
## Use this command to execute desired plugins of ohmyzsh.
znap source ohmyzsh/ohmyzsh lib/{git,theme-and-appearance}
echo 'znap source ohmyzsh/ohmyzsh lib/{git,theme-and-appearance}' >>~/.zshrc
## Path to your oh-my-zsh installation.
echo 'export ZSH="$HOME/zsh-snap/zsh-snap/ohmyzsh" ' >>~/.zshrc
## install ohmyzsh via zsh-snap. EOF


## install powerlever10k into ohmyzsh. start
## Install powerlever10k into ohmyzsh so this theme can be used as ramdon theme.
znap source romkatv/powerlevel10k
## execute this command on zsh startup will make powerlevel10k be the only available theme.
## echo 'znap source romkatv/powerlevel10k' >>~/.zshrc
cd ~/zsh-snap/ohmyzsh/custom/themes/
ln -s ../../../powerlevel10k
cd ~
echo " \n \n Use this command to use powerlever10k theme. \n Or write this command into .zshrc file. \n \n"
echo "        znap prompt ohmyzsh/ohmyzsh powerlever10k"
echo " \n \n Use this command to use random theme. \n Or write this command into .zshrc file. \n \n"
echo "        znap prompt ohmyzsh/ohmyzsh random"
## install powerlever10k into ohmyzsh. EOF


## install marlonrichert/zsh-autocomplete for fish like autosuggestion
znap source marlonrichert/zsh-autocomplete
echo 'znap source marlonrichert/zsh-autocomplete' >>~/.zshrc


cd $last_working_directory
echo " \n \n Setup completed. If zsh went wrong, please follow this guide https://github.com/marlonrichert/zsh-autocomplete#manual-installation . Or try to rename or delete ~/.zshrc , ~/.zprofile , ~/.p10k.zsh ,  and the folder of plugins (default path is ~/zsh-snap ), then execute this script again."                                             