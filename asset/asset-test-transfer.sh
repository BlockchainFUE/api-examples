#!/bin/bash
#
# Ejemplo transferencia
# keypair generado con: https://api.blockchainfue.com/api/keypair/pericoeldelospalotes/1234
#
TXID=accdeaf6a461daff042bec6efb00338a5653ad55af3ed688484feea34cd27df4
curl -v -H "X-Public-Key: 7u5gdTkzX39WDHMyCGhZcHUvmWw2wxXJUNVP3ohGxmWu"\
        -H "X-Private-Key: GAQZY4zLw86aiHPA2oLDukSHXhyBnpBVDa5YzMfqa1wT"\
        -H "X-Api-Network: test"\
        -H "X-App-Name: hackaton-boot-01" \
        -H "Content-Type: application/json"\
        -X PUT --data "{\"to\":\"ERJmMB4kdxmCEm44NyBYify3r8tcHQ8zzMruNjBHtgdq\",\"metadata\":{\"test\":true,\"app\":\"curl\"}}"\
         https://api.blockchainfue.com/api/asset/$TXID
