#!/bin/sh
case $1 in
	w )
		terminator &
		sleep 1
		gpmdp &
		sleep 3
		i3-msg "workspace 10"
		sleep 3
		i3-msg "workspace 9"
		sleep 0.1
		google-chrome-beta --new-window messenger.com web.whatsapp.com cqse.slack.com "https://inbox.google.com/u/0/?pli=1" "https://inbox.google.com/u/1/?pli=1" &
		sleep 8
		i3-msg "workspace 8"
		sleep 0.1
		google-chrome-beta --new-window calendar.google.com todoist.com &
		sleep 6
		i3-msg "workspace 7"
		google-chrome-beta --new-window &
		sleep 6
		i3-msg "workspace 1"
		sleep 0.1
		terminator &
		;;
	p )
		gpmdp &
		sleep 3
		i3-msg "workspace 10"
		sleep 0.1
		i3-msg "workspace 9"
		sleep 0.1
		google-chrome-beta --new-window messenger.com web.whatsapp.com &
		sleep 6
		i3-msg "workspace 8"
		sleep 0.1
		google-chrome-beta --new-window calendar.google.com todoist.com &
		sleep 6
		i3-msg "workspace 1"
esac
