#!/bin/bash
MONGO_HOME="$HOME/src/mongodb-linux-i686-1.4.2/"
MONGO_HOME="$HOME/mongo"

echo "Starting ....$MONGO_DIR/mongod --dbpath ~/re/data"
$MONGO_HOME/bin/mongod --dbpath ~/startup/data --fork --logpath=log/mongo.log -vvvvv 

# --fork  --rest
export MONGO_HOME
echo "Run $MONGO_HOME/bin/mongo to start the console"
