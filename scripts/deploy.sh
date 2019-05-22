#!/bin/bash
DEPLOY_HOST="root@104.248.157.25"
DEPLOY_REPO="git@github.com:osd-henry/test-docker.git"
DEPLOY_DIR="app"
SSH_KEY="/var/go/.ssh/webminar_id_rsa"
UPDATE_SOURCE="mv $DEPLOY_DIR $DEPLOY_DIR.bak && rm -rf $DEPLOY_DIR && git clone $DEPLOY_REPO $DEPLOY_DIR"
START_SERVER="sudo docker-compose -f docker-compose.yml -f docker-compose.prod.yml up --build -d"
COMMANDS="$UPDATE_SOURCE && cd $DEPLOY_DIR && $START_SERVER"

ssh -i "$SSH_KEY" "$DEPLOY_HOST" "$COMMANDS"