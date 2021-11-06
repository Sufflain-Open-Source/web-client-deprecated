#!/bin/sh

PORT=$1

if [ "$PORT" = "" ]; then
    PORT="8080"
fi

dart pub global run webdev serve web:"$PORT"
