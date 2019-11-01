#!/bin/bash
#
# Ejemplo de escritura 
# keypair generado con: https://api.blockchainfue.com/api/keypair/pericoeldelospalotes/1234
#
curl -v -H "X-Public-Key: 7u5gdTkzX39WDHMyCGhZcHUvmWw2wxXJUNVP3ohGxmWu"\
        -H "X-Private-Key: GAQZY4zLw86aiHPA2oLDukSHXhyBnpBVDa5YzMfqa1wT"\
        -H "X-Api-Network: test"\
        -H "X-App-Name: hackaton-boot-01" \
        -H "Content-Type: application/json"\
        -H "Accept: application/json"\
        -X POST --data "{\"asset\":{\"type\":\"test-asset\",\"name\":\"test001\",\"data\":{\"test\":true,\"app\":\"curl\"}}}"\
         https://api.blockchainfue.com/api/asset
