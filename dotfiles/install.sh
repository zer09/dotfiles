touch ~/install_progress_log.txt
log_file=~/install_progress_log.txt

if ! rpm -qa | grep vim-enhanced; then
	sudo dnf install -y vim-enhanced
	if type -p vim > /dev/null; then
		echo "vim Installed" >> $log_file
	else
		echo "vim FAILED TO INSTALL!!!" >> $log_file
	fi
fi
