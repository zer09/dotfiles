sudo dnf install -y emacs | tee_log

cd ~/.local/share/fonts

curl -fLo "Inconsolata-Regular.ttf" https://raw.githubusercontent.com/google/fonts/master/ofl/inconsolata/Inconsolata-Regular.ttf | tee_log
curl -fLo "Inconsolata-Bold.ttf" https://raw.githubusercontent.com/google/fonts/master/ofl/inconsolata/Inconsolata-Bold.ttf | tee_log

cd ~

git clone git@github.com:zer09/spacemacs.git ~/.emacs.d | tee_log
if [[ $? != 0 ]]; then
	echo "failed to clone spacemacs" | tee_log
fi

cd ~/.emacs.d
git remote add -f upstream git@github.com:syl20bnr/spacemacs.git | tee_log
git checkout -b develop origin/develop | tee_log
git pull --rebase upstream develop | tee_log

cd ~
