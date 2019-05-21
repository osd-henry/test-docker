#!/bin/bash
DEPLOY_HOST="$3"
DEPLOY_REPO="$1"
DEPLOY_DIR="$5"
SSH_KEY="$7"
COMMAND="mv $DEPLOY_DIR $DEPLOY_DIR.bak && rm -rf $DEPLOY_DIR && git clone $DEPLOY_REPO $DEPLOY_DIR && cd $DEPLOY_DIR && sudo docker-compose up --build -d"

ssh -i "$SSH_KEY" "$DEPLOY_HOST" "$COMMAND"