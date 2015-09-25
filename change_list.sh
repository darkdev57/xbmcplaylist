#!/bin/bash
for i in {1..100}; do ping -c1 www.google.com &> /dev/null && break; done
curl -s https://raw.githubusercontent.com/darkdev57/xbmcplaylist/master/playlist.m3u > /storage/playlist_new.m3u
chmod 744 /storage/playlist_new.m3u

#choose CH ip range

iprange=$((RANDOM%7+1))

case $iprange in
	1)
		startStr="77"
		myrange="4+56"
	;;
	2)
		startStr="83"
		myrange="4+76"
	;;
	3)
		startStr="84"
		myrange="4+72"
	;;
	4)
		startStr="85"
		myrange="8+0"
	;;
	5)
		startStr="92"
		myrange="4+104"
	;;
	6)
		startStr="178"
		myrange="8+192"
	;;
	7)
		startStr="188"
		myrange="4+60"
	;;
esac

sed -r -e "s/77\.([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3})/$startStr\.$((RANDOM%$myrange))\.$((RANDOM%254+1))\.$((RANDOM%254+1))/g" \
-e "s/83\.([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3})/$startStr\.$((RANDOM%$myrange))\.$((RANDOM%254+1))\.$((RANDOM%254+1))/g" \
-e "s/84\.([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3})/$startStr\.$((RANDOM%$myrange))\.$((RANDOM%254+1))\.$((RANDOM%254+1))/g" \
-e "s/85\.([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3})/$startStr\.$((RANDOM%$myrange))\.$((RANDOM%254+1))\.$((RANDOM%254+1))/g" \
-e "s/92\.([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3})/$startStr\.$((RANDOM%$myrange))\.$((RANDOM%254+1))\.$((RANDOM%254+1))/g" \
-e "s/178\.([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3})/$startStr\.$((RANDOM%$myrange))\.$((RANDOM%254+1))\.$((RANDOM%254+1))/g" \
-e "s/188\.([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3})/$startStr\.$((RANDOM%$myrange))\.$((RANDOM%254+1))\.$((RANDOM%254+1))/g" /storage/playlist_new.m3u > /storage/playlist.m3u
rm /storage/playlist_new.m3u