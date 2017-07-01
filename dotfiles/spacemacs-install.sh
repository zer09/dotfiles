cd ~/.local/share/fonts

curl -fLo "Inconsolata-Regular.ttf" https://raw.githubusercontent.com/google/fonts/master/ofl/inconsolata/Inconsolata-Regular.ttf
curl -fLo "Inconsolata-Bold.ttf" https://raw.githubusercontent.com/google/fonts/master/ofl/inconsolata/Inconsolata-Bold.ttf

cd ~

git clone git@github.com:syl20bnr/spacemacs.git ~/.emacs.d
if [[ $? != 0 ]]; then
	echo "failed to clone spacemacs" | tee_log
fi
