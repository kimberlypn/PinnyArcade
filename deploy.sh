#!/bin/bash

export PORT=5107
export MIX_ENV=prod
export GIT_PATH=/home/pinny_arcade/src/pinny_arcade

PWD=`pwd`
if [ $PWD != $GIT_PATH ]; then
	echo "Error: Must check out git repo to $GIT_PATH"
	echo "  Current directory is $PWD"
	exit 1
fi

if [ $USER != "pinny_arcade" ]; then
	echo "Error: must run as user 'pinny_arcade'"
	echo "  Current user is $USER"
	exit 2
fi

mix deps.get
(cd assets && npm install)
(cd assets && ./node_modules/brunch/bin/brunch b -p)
mix phx.digest
mix release --env=prod

mkdir -p ~/www
mkdir -p ~/old

NOW=`date +%s`
if [ -d ~/www/pinny_arcade ]; then
	echo mv ~/www/pinny_arcade ~/old/$NOW
	mv ~/www/pinny_arcade ~/old/$NOW
fi

mkdir -p ~/www/pinny_arcade
REL_TAR=~/src/pinny_arcade/_build/prod/rel/pinny_arcade/releases/0.0.1/pinny_arcade.tar.gz
(cd ~/www/pinny_arcade && tar xzvf $REL_TAR)

crontab - <<CRONTAB
@reboot bash /home/pinny_arcade/src/pinny_arcade/start.sh
CRONTAB

#. start.sh
