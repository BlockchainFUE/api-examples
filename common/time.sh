#!/bin/bash
#
# Ejemplo de peticion de statis del API
#
curl -v -H "X-Public-Key: 3UXnZugUbMGKBwEGyt1HH6Z1LC9PiyyX3uSvGDNkqRth"\
        -H "X-Private-Key: EwQWCVFayrPUSGV1UHVEBYAVEnDnBajvBi3Jcqtv1gpy"\
        -H "X-Api-Network: test"\
        -H "X-App-Id: 60796fedf245245c7443210c" \
        -H "X-App-Key: 4340472499d21403cd7de3da10bf8c08142f926e3ae076c4687b95543fd84600" \
        -H "Content-Type: application/json"\
        -H "Accept: application/json"\
        https://api.blockchainfue.com/api/system/time
         
