#!/bin/sh


case "$(setxkbmap -v | awk -F '+' '/symbols/ {print $2}')" in
	us)
		setxkbmap it
		;;
	it)
		setxkbmap us
		;;
	*)
		echo 'Layout not recognize'
		exit 2
esac

exit 0


