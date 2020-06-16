# DOCKER CONTAINER COMMANDS COMMANDER

Run commands as if they were installed in your local machine.

Add volumes with your working paths in ./commander-container.sh.

Then:

```
ln -s YOUR_PATH/commander-container.sh /usr/bin/commander-container
ln -s YOUR_PATH/commander-client.sh /usr/bin/commander-client
```

Run:

```
commander-container DOCKER_IMAGE_NAME
```

The previous command starts a docker container named "commander" with the passed image.

Run(for example):

```
commander-client node /YOUR_WORKING_FOLDER/index.js
```

Change "node" command for whatever command available in your container.

Can set an alias, example in linux:

```
alias node="commander-client node"
```
