#!/bin/bash

command=$@

docker exec -u $UID -w $PWD -it commander $command