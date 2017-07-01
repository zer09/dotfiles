if ! rpm -qa | grep vim-enhanced; then
	sudo dnf install -y vim-enhanced | tee -a "$log_file"
	if type -p vim > /dev/null; then
		echo "vim Installed\n\n" >> $log_file
	else
		echo "vim FAILED TO INSTALL!!!\n\n" >> $log_file
	fi
fi
