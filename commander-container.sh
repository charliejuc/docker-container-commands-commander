#!/bin/bash

image=$1

if [ ! $image ]; then
    >&2 echo "image parameter is required"
    exit 1
fi

#adds your custom volumes in -v flag
docker run -d --rm --net=host \
    -v /var/example:/var/example
    --name commander $image tail -f /dev/null