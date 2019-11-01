#!/bin/bash
#
# Ejemplo quemado activo
# keypair generado con: https://api.blockchainfue.com/api/keypair/pericoeldelospalotes/1234
#
TXID=0285d55a8ffc9b1fdf7b9af07fe930242b8a6eec8da4ceb0fc8b64f846775c46
curl -v -H "X-Public-Key: 7u5gdTkzX39WDHMyCGhZcHUvmWw2wxXJUNVP3ohGxmWu"\
        -H "X-Private-Key: GAQZY4zLw86aiHPA2oLDukSHXhyBnpBVDa5YzMfqa1wT"\
        -H "X-Api-Network: test"\
        -H "X-App-Name: hackaton-boot-01" \
        -H "Content-Type: application/json"\
        -X DELETE \
         https://api.blockchainfue.com/api/asset/$TXID
