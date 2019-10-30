#!/bin/bash
#
# Ejemplo transferencia token
# keypair generado con: https://api.blockchainfue.com/api/keypair/pericoeldelospalotes/1234
#
TXID=0d8ec4d418dee8d921a05843961a8b0fe016939f01173909d3d2665eb2070bd6
curl -v -H "X-Public-Key: 7u5gdTkzX39WDHMyCGhZcHUvmWw2wxXJUNVP3ohGxmWu"\
        -H "X-Private-Key: GAQZY4zLw86aiHPA2oLDukSHXhyBnpBVDa5YzMfqa1wT"\
        -H "X-Api-Network: test"\
        -H "X-App-Name: hackaton-boot-01" \
        -H "Content-Type: application/json"\
        -X PUT --data "{\"to\":\"7u5gdTkzX39WDHMyCGhZcHUvmWw2wxXJUNVP3ohGxmWu\",\"amount\":1,\"metadata\":{\"test-token-transfer\":true,\"app\":\"curl\"}}"\
         https://api.blockchainfue.com/api/token/$TXID
