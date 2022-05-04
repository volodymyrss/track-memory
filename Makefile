install-service:
	install track-memory.service $(HOME)/.config/systemd/user/track-memory.service
	systemctl --user daemon-reload
	systemctl --user enable track-memory.service 
	systemctl --user restart track-memory.service 
