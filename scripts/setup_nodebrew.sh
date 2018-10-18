#!/bin/sh
# install nodebrew
curl -L git.io/nodebrew | perl - setup

# install latest
nodebrew install-binary latest

nodebrew use latest
