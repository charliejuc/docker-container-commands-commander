#!/bin/bash

command=$@

docker exec -u $UID -w $PWD --env-file <(env) -it commander $command
