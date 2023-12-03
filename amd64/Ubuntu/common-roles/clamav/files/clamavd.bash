#!/bin/bash

mkdir -p $HOME/.clamtk/virus
mkdir -p $HOME/.clamtk/history

find $1 -type d | xargs clamdscan \
  --infected \
  --multiscan \
  --fdpass \
  --move="$HOME/.clamtk/virus" \
  --log="$HOME/.clamtk/history/$(date +\%Y\%m\%d-\%H\%M\%S).log"
