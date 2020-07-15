#!/bin/sh

set -e

if [ ! -e package.json ]; then
  cp -arT $READY_DIR .
  npm install
  npm install --save-dev nodemon
  rm -r $READY_DIR
elif [ -e $READY_DIR ]; then
  npm install
  npm install --save-dev nodemon
  rm -r $READY_DIR
fi

exec "$@"
