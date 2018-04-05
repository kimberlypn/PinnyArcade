#!/bin/bash

export PORT=5107

cd ~/www/pinny_arcade
./bin/pinny_arcade stop || true
./bin/pinny_arcade start

