#!/bin/sh
for i in {1..100}; do ping -c1 www.google.com &> /dev/null && break; done
#curl -s https://raw.githubusercontent.com/darkdev57/xbmcplaylist/master/playlist.m3u > /storage/playlist_new.m3u
curl -s http://kodilive.eu/tv/ > /storage/playlist_new.m3u
#curl -s https://raw.githubusercontent.com/darkdev57/xbmcplaylist/master/playlist.m3u > /storage/playlist.m3u
chmod 744 /storage/playlist_new.m3u
#chmod 744 /storage/playlist.m3u

choose CH ip range
iprange=$((RANDOM%7+1))

case $iprange in
	1)
		startStr="83"
		myrange="4+76"
	;;
	2)
		startStr="84"
		myrange="4+72"
	;;
	3)
		startStr="85"
		myrange="8+0"
	;;
	4)
		startStr="138"
		myrange="8+221"
	;;
	5)
		startStr="166"
		myrange="4+12"
	;;
	6)
		startStr="178"
		myrange="8+192"
	;;
	7)
		startStr="217"
		myrange="2+192"
	;;
esac
##replace all old ips with new one
sed -r -e "s/\|X-Forwarded-For=83\.([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3})/\|X-Forwarded-For=$startStr\.$((RANDOM%$myrange))\.$((RANDOM%254+1))\.$((RANDOM%254+1))/g" \
-e "s/\|X-Forwarded-For=84\.([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3})/\|X-Forwarded-For=$startStr\.$((RANDOM%$myrange))\.$((RANDOM%254+1))\.$((RANDOM%254+1))/g" \
-e "s/\|X-Forwarded-For=85\.([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3})/\|X-Forwarded-For=$startStr\.$((RANDOM%$myrange))\.$((RANDOM%254+1))\.$((RANDOM%254+1))/g" \
-e "s/\|X-Forwarded-For=138\.([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3})/\|X-Forwarded-For=$startStr\.$((RANDOM%$myrange))\.$((RANDOM%254+1))\.$((RANDOM%254+1))/g" \
-e "s/\|X-Forwarded-For=166\.([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3})/\|X-Forwarded-For=$startStr\.$((RANDOM%$myrange))\.$((RANDOM%254+1))\.$((RANDOM%254+1))/g" \
-e "s/\|X-Forwarded-For=178\.([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3})/\|X-Forwarded-For=$startStr\.$((RANDOM%$myrange))\.$((RANDOM%254+1))\.$((RANDOM%254+1))/g" \
-e "s/\|X-Forwarded-For=217\.([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3})/\|X-Forwarded-For=$startStr\.$((RANDOM%$myrange))\.$((RANDOM%254+1))\.$((RANDOM%254+1))/g" /storage/playlist_new.m3u > /storage/playlist_ch.m3u

#choose FR ip range
iprangefr=$((RANDOM%7+1))

case $iprangefr in
	1)
		startStrFr="2"
		myrangeFr="16+0"
	;;
	2)
		startStrFr="5"
		myrangeFr="4+48"
	;;
	3)
		startStrFr="31"
		myrangeFr="8+32"
	;;
	4)
		startStrFr="37"
		myrangeFr="16+160"
	;;
	5)
		startStrFr="77"
		myrangeFr="32+128"
	;;
	6)
		startStrFr="90"
		myrangeFr="128+0"
	;;
	7)
		startStrFr="92"
		myrangeFr="64+128"
	;;
esac
##replace all old ips with new one
sed -r -e "s/\|X-Forwarded-For=2\.([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3})/\|X-Forwarded-For=$startStrFr\.$((RANDOM%$myrangeFr))\.$((RANDOM%254+1))\.$((RANDOM%254+1))/g" \
-e "s/\|X-Forwarded-For=5\.([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3})/\|X-Forwarded-For=$startStrFr\.$((RANDOM%$myrangeFr))\.$((RANDOM%254+1))\.$((RANDOM%254+1))/g" \
-e "s/\|X-Forwarded-For=31\.([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3})/\|X-Forwarded-For=$startStrFr\.$((RANDOM%$myrangeFr))\.$((RANDOM%254+1))\.$((RANDOM%254+1))/g" \
-e "s/\|X-Forwarded-For=37\.([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3})/\|X-Forwarded-For=$startStrFr\.$((RANDOM%$myrangeFr))\.$((RANDOM%254+1))\.$((RANDOM%254+1))/g" \
-e "s/\|X-Forwarded-For=77\.([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3})/\|X-Forwarded-For=$startStrFr\.$((RANDOM%$myrangeFr))\.$((RANDOM%254+1))\.$((RANDOM%254+1))/g" \
-e "s/\|X-Forwarded-For=90\.([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3})/\|X-Forwarded-For=$startStrFr\.$((RANDOM%$myrangeFr))\.$((RANDOM%254+1))\.$((RANDOM%254+1))/g" \
-e "s/\|X-Forwarded-For=92\.([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3})/\|X-Forwarded-For=$startStrFr\.$((RANDOM%$myrangeFr))\.$((RANDOM%254+1))\.$((RANDOM%254+1))/g" /storage/playlist_ch.m3u > /storage/playlist_fr.m3u

#choose DE ip range
iprangede=$((RANDOM%7+1))

case $iprangede in
	1)
		startStrDe="46"
		myrangeDe="16+80"
	;;
	2)
		startStrDe="53"
		myrangeDe="256+0"
	;;
	3)
		startStrDe="78"
		myrangeDe="8+48"
	;;
	4)
		startStrDe="79"
		myrangeDe="64+192"
	;;
	5)
		startStrDe="80"
		myrangeDe="31+128"
	;;
	6)
		startStrDe="87"
		myrangeDe="31+128"
	;;
	7)
		startStrDe="188"
		myrangeDe="16+96"
	;;
esac
##replace all old ips with new one
sed -r -e "s/\|X-Forwarded-For=46\.([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3})/\|X-Forwarded-For=$startStrDe\.$((RANDOM%$myrangeDe))\.$((RANDOM%254+1))\.$((RANDOM%254+1))/g" \
-e "s/\|X-Forwarded-For=53\.([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3})/\|X-Forwarded-For=$startStrDe\.$((RANDOM%$myrangeDe))\.$((RANDOM%254+1))\.$((RANDOM%254+1))/g" \
-e "s/\|X-Forwarded-For=78\.([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3})/\|X-Forwarded-For=$startStrDe\.$((RANDOM%$myrangeDe))\.$((RANDOM%254+1))\.$((RANDOM%254+1))/g" \
-e "s/\|X-Forwarded-For=79\.([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3})/\|X-Forwarded-For=$startStrDe\.$((RANDOM%$myrangeDe))\.$((RANDOM%254+1))\.$((RANDOM%254+1))/g" \
-e "s/\|X-Forwarded-For=80\.([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3})/\|X-Forwarded-For=$startStrDe\.$((RANDOM%$myrangeDe))\.$((RANDOM%254+1))\.$((RANDOM%254+1))/g" \
-e "s/\|X-Forwarded-For=87\.([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3})/\|X-Forwarded-For=$startStrDe\.$((RANDOM%$myrangeDe))\.$((RANDOM%254+1))\.$((RANDOM%254+1))/g" \
-e "s/\|X-Forwarded-For=188\.([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3})/\|X-Forwarded-For=$startStrDe\.$((RANDOM%$myrangeDe))\.$((RANDOM%254+1))\.$((RANDOM%254+1))/g" /storage/playlist_fr.m3u > /storage/playlist.m3u

rm /storage/playlist_new.m3u
rm /storage/playlist_ch.m3u
rm /storage/playlist_fr.m3u

sync