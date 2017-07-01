touch ~/install_progress_log.txt
log_file=~/install_progress_log.txt

mkdir -p ~/dotfiles-temp/
mkdir -p ~/.local/share/fonts

. ~/dotfiles/vim-install.sh
. ~/dotfiles/nerd-fonts-install.sh
