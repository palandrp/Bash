#!/bin/bash
     TIME_LIMIT=10
     INTERVAL=1
     echo
     echo "Для прерывания работы сценария, ранее чем через $TIME_LIMIT секунд,
     нажмите Control-C."
     echo
     while [ "$SECONDS" -le "$TIME_LIMIT" ]
     do
	let "last_two_sym = $SECONDS - $SECONDS / 100 * 100"
       	if [ "$last_two_sym" -ge 11 -a "$last_two_sym" -le 19 ]; then
  		units="секунд"
  	else
    		let "last_sym = $last_two_sym - $last_two_sym / 10 * 10"
    		case "$last_sym" in
  			"1" ) units="секунду";;
  			"2" | "3" | "4" ) units="секунды";;
			*) units="секунд";; 
		esac
       	fi
	echo "Сценарий отработал $SECONDS $units."
     	sleep $INTERVAL
     done
     echo -e "\a"
     exit 0
