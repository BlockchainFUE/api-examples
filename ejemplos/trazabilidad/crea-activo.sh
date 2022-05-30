#!/bin/bash
#
# Ejemplo de escritura 
# keypair generado con: https://api.blockchainfue.com/api/keypair/pericoeldelospalotes/1234
#
curl -v -H "X-Api-Network: test"\
        -H "X-App-Id: 60796fedf245245c7443210c" \
        -H "X-App-Key: 4340472499d21403cd7de3da10bf8c08142f926e3ae076c4687b95543fd84600" \
        -H "Content-Type: application/json"\
        -H "Accept: application/json"\
        -X POST --data "{\"asset\":{\"data\":{\"type\":\"activo_trazable\",\"codigo\":\"PQ00001\",\"test\":true,\"app\":\"curl\"}}}"\
        https://api.blockchainfue.com/api/asset
