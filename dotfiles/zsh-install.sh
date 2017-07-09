sudo dnf install -y zsh | tee_log
sudo dnf install -y util-linux-user | tee_log
sudo chsh -s $(which zsh)
