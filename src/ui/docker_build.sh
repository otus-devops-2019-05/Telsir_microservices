#!/bin/bash

echo `git show --format="%h" HEAD | head -1` > build_info.txt
echo `git rev-parse --abbrev-ref HEAD` >> build_info.txt

sudo docker build -t telsir/ui:0.0.1 .
