#!/bin/bash

#Hope this shows that the concepts where understood
#--W and --E implementations seem straight forward additions.


HTML="$(curl -s "https://ruter.no/reiseplanlegger/Stoppested/(3010360)Blindern%20%5bT-bane%5d%20(Oslo)/Avganger/#st:1,sp:0,bp:0")"

sub="${HTML#*angular.module}"
sub2="$sub%%angular.module*}"

destinationTmp="${sub2#*\"destination\":\"}"
timeTmp="${destinationTmp#*\"departureTime\":\"}"
destination1="${destinationTmp%%\",\"transportation*}"
time1="${timeTmp%%\",\"isRemainingTime\"*}"

echo "$destination1"
echo "$time1"
	
for ((i=0; i < 6; i++)); do
	destinationTmp="${destinationTmp#*\"destination\":\"}"
	timeTmp="${destinationTmp#*\"departureTime\":\"}"
	destination2="${destinationTmp%%\",\"transportation*}"
	time2="${timeTmp%%\",\"isRemainingTime\"*}"

	echo "$destination2"
	echo "$time2"
done


#Tried for a very long time to get something like this to work
#then got some helpful times and ended up with the currenrt version above

#HTML="$(curl -s "https://ruter.no/reiseplanlegger/Stoppested/(3010370)Forskningsparken%20%5bT-bane%5d%20(Oslo)/Avganger/#st:1,sp:0,bp:0" |
# grep "tripId" | grep "departureTime" | cut -d"\"" -f158)"
#echo "$HTML"
#HTML="$(curl -s "https://ruter.no/reiseplanlegger/Stoppested/(3010370)Forskningsparken%20%5bT-bane%5d%20(Oslo)/Avganger/#st:1,sp:0,bp:0" |
# grep "tripId" | grep "departureTime" | cut -d"\"" -f178)"
#echo "$HTML"