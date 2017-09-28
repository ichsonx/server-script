#!/usr/bin/env bash

#install vim, git, lrzsz, curl
echo "===removing vim...\n"
sudo apt-get remove vim && echo "===install vim...\n" && sudo apt-get install vim && echo "===install git...\n" && sudo apt-get install git && echo "===install lrzsz...\n" && sudo apt-get install lrzsz
sudo apt-get install -y curl