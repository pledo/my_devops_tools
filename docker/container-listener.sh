#!/usr/bin/env bash

DESIRED_STATUS="running"
STATUS="starting"
ATTEMPT="0"
CNAME="{{.Names}}"

for service in $(docker ps -a --format="{{.Names}}")
  do 
    echo "service: $service"
    while [ $STATUS != "running" ] && [ $ATTEMPT -lt 5 ]
      do
        STATUS=$(docker inspect --format="{{.State.Status}}" $service)
        echo -e "$service is: $STATUS"
        echo -e "Round: $ATTEMPT"
        sleep 3
        let "ATTEMPT++"
      done
    STATUS="starting"
    ATTEMPT="0"

  done
