#!/bin/bash

#Initialize ingress

if [ -f  acme.json ]
    then
        echo 'file already exists'
    else
        touch acme.json && chmod 600 ./acme.json
fi
netPresence='docker network ls | grep ingress'
if [[ ! -z $netPresence ]]
    then
        echo 'network already exists'
    else
        docker network create ingress
fi