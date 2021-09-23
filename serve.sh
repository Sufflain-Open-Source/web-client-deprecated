#!/bin/sh

PORT=$1

if [ "$PORT" = "" ]; then
    PORT="8080"
fi

webdev serve web:"$PORT"