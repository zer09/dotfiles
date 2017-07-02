cd ~/dotfiles-temp
git clone --depth 1 git@github.com:ryanoasis/nerd-fonts.git | tee_log

cd ~/dotfiles-temp/nerd-fonts
git pull | tee_log
./install.sh DejaVuSansMono | tee_log
./install.sh SourceCodePro | tee_log
./install.sh Inconsolata | tee_log
cd ~
