touch ~/install_progress_log.txt
log_file=~/install_progress_log.txt

mkdir -p ~/dotfiles-temp/
mkdir -p ~/.local/share/fonts
DOT_TEMP="~/dotfiles-temp"

tee_log() {
	tee -a "$log_file"
}

. ~/dotfiles/nerd-fonts-install.sh
. ~/dotfiles/vim-install.sh
. ~/dotfiles/spacemacs-install.sh
. ~/dotfiles/go-install.sh
. ~/dotfiles/npm-install.sh
