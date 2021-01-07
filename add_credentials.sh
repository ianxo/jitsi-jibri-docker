#!/bin/bash

credentials=()
# syntax:
# "username meet.jitsi password"
credentials[0]="allinfest jitsi.gruppe-ohne-name.de ysmbztbd"

for i in "${credentials[@]}"
do
    docker exec -it git-repo_prosody_1 prosodyctl --config /config/prosody.cfg.lua register ${i}
done

