#!/bin/bash

function stopexistingservice {
    ps -ef | grep index.js | awk '{print $2}' | xargs kill
}

function stopservice {
    echo "Stoping blog"
    su - ghost -c "forever stop index.js"
}

function startservice {
    echo "Starting blog"
    su - ghost -c "cd /var/www/ghost; NODE_ENV=production forever start index.js"
}


if [ "$#" -ne 1 ]; then
        echo "Illegal number of parameters"
        echo "Please user ./forever.sh start OR ./forever.sh stop"
fi

if [ "$1" == "start" ]; then
    stopexistingservice
    startservice
elif [ "$1" == "stop" ]; then
    stopservice
else
    echo "Wrong Parameter"
fi
