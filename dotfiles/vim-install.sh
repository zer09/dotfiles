if ! rpm -qa | grep vim-enhanced; then
	sudo dnf install -y vim-enhanced | tee_log
	if type -p vim > /dev/null; then
		echo "vim Installed" | tee_log
	else
		echo "vim FAILED TO INSTALL!!!" | tee_log
	fi
fi
