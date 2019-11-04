#!/bin/bash

#Initialize ingress

if [[ -z ! acme.json ]]
    then
        touch acme.json && chmod 600 ./acme.json
    else
        echo 'file already exists'
fi
netPresence='docker network ls | grep ingress'
if [[ -z ! $netPresence ]]
    then
        docker network create ingress
    else
        echo 'network is already created'
fi