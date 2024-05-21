# Fail on any command.
set -eux pipefail

# Install Powerline for VIM.
sudo apt install -y python3-pip
pip3 install --user powerline-status
sudo cp configs/.vimrc ~/.vimrc
sudo apt install -y fonts-powerline

# Install Patched Font
mkdir ~/.fonts
sudo cp -a fonts/. ~/.fonts/
fc-cache -vf ~/.fonts/


################################ Alternative commande ###########################################

# #!/bin/bash
# set -euxo pipefail

# # Install Powerline for VIM.

# # Ensure system Python tools are installed
# sudo apt install -y python3-full

# # Create a virtual environment
# python3 -m venv ~/.vim-powerline-env

# # Activate the virtual environment
# source ~/.vim-powerline-env/bin/activate

# # Upgrade pip inside the virtual environment
# pip install --upgrade pip

# # Install powerline-status within the virtual environment
# pip install powerline-status

# # Deactivate the virtual environment
# deactivate

# # Copy the .vimrc configuration
# sudo cp configs/.vimrc ~/.vimrc

# # Install Powerline fonts using apt
# sudo apt install -y fonts-powerline

# # Install patched font
# mkdir -p ~/.fonts
# sudo cp -a fonts/. ~/.fonts/
# fc-cache -vf ~/.fonts/

# # Add instructions for activating Powerline in VIM
# echo 'To use Powerline, add the following to your ~/.vimrc file:
#     set rtp+=~/.vim-powerline-env/lib/python3.*/site-packages/powerline/bindings/vim
#     set laststatus=2
#     set t_Co=256
#     set guifont=PowerlineFont
# ' >> ~/.vimrc
