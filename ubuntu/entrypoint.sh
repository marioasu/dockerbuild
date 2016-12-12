#!/bin/bash
for script in /config/*.sh; do
    [ -f $script ] && bash "$script"
done
