#!/bin/bash
#
# Ejemplo de lectura de unspents de un token por ID
# keypair generado con: https://api.blockchainfue.com/api/keypair/pericoeldelospalotes/1234
#
TXID=09c4c9098e41921b84647d4649d285c430d9818bf3da307be1dd0bbcbfd14a06
curl -v -H "X-Public-Key: 7u5gdTkzX39WDHMyCGhZcHUvmWw2wxXJUNVP3ohGxmWu"\
        -H "X-Private-Key: GAQZY4zLw86aiHPA2oLDukSHXhyBnpBVDa5YzMfqa1wT"\
        -H "X-Api-Network: test"\
        -H "X-App-Name: hackaton-boot-01" \
        -H "Content-Type: application/json"\
     	https://api.blockchainfue.com/api/token/unspents/$TXID
     
     