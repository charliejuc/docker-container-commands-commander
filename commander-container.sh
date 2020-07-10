#!/bin/bash

extra_args=$1
image=$2

if [ ! $image ]; then
    if [ ! "$extra_args" ]; then
        >&2 echo "'image' parameter is required"
        exit 1
    fi

    image=$extra_args
fi

#adds your custom volumes in -v flag
docker run -d --rm --net=host $extra_args \
    -v /var/example:/var/example
    --name commander $image tail -f /dev/null
