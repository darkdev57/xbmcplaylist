#!/bin/bash
curl -s https://raw.githubusercontent.com/darkdev57/xbmcplaylist/master/playlist.m3u > playlist_new.m3u
chmod 744 playlist_new.m3u
myThing="85."$((RANDOM%6+1))"."$((RANDOM%254+1))"."$((RANDOM%254+1))
sed -r "s/85\.([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3})/$myThing/g" playlist_new.m3u > playlist.m3u
rm playlist_new.m3u