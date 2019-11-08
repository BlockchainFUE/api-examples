#!/bin/bash
#
# Ejemplo de lectura de todos los unspents
# keypair generado con: https://api.blockchainfue.com/api/keypair/pericoeldelospalotes/1234
#
ID=8d60959d1a8c4d7f52bf4ef7484f0cebe3471951f403fb8e550a848c80631c68
curl -v -H "X-Public-Key: 7u5gdTkzX39WDHMyCGhZcHUvmWw2wxXJUNVP3ohGxmWu"\
        -H "X-Private-Key: GAQZY4zLw86aiHPA2oLDukSHXhyBnpBVDa5YzMfqa1wT"\
        -H "X-Api-Network: test"\
        -H "X-App-Name: hackaton-boot-01" \
        -H "Content-Type: application/json"\
        -H "Accept: application/json"\
     	https://api.blockchainfue.com/api/asset/unspents/$ID
     	
     
     