#!/bin/sh
startTime="08"
endtime="22"
currentTime=`date +"%H"`
runTime ="((endtime -startTime)*3600)"

if [[ ! ( "$currentTime" < "$startTime" || "$currentTime" > "$endtime" ) ]]; then
  vlc http://relay1.julradio.se:80 -I dummy  --run-time runTime vlc://quit
fi
