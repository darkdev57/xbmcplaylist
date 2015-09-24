#!/bin/bash
curl -s https://raw.githubusercontent.com/darkdev57/xbmcplaylist/master/playlist.m3u > /storage/playlist_new.m3u
chmod 744 /storage/playlist_new.m3u
sed -r "s/85\.([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3})/85\.$((RANDOM%6+1))\.$((RANDOM%254+1))\.$((RANDOM%254+1))/g" /storage/playlist_new.m3u > /storage/playlist.m3u
rm /storage/playlist_new.m3u