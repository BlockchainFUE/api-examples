#!/bin/bash
#
# Ejemplo de transferencia de un token por ID
#
TO=3UXnZugUbMGKBwEGyt1HH6Z1LC9PiyyX3uSvGDNkqRth
TXID=912fcb40ca7ade638e9480817c2850408dd72df955d5c565601b7b6d0062709e
curl -v -H "X-Public-Key: Dq8FxK99G2rCApHSVwMyH3Tezp7UsSr1brLAAtrsP1xb"\
        -H "X-Private-Key: Eeu9pjMvV97ebnf8km3goq8fN8AiVAKFMzoLDqP3bpka"\
        -H "X-Api-Network: test"\
        -H "X-App-Id: 60796fedf245245c7443210c" \
        -H "X-App-Key: 4340472499d21403cd7de3da10bf8c08142f926e3ae076c4687b95543fd84600" \
        -H "Content-Type: application/json"\
        -H "Accept: application/json"\
        -X PUT \
        --data  "{\"id\":\"$TXID\",\"to\":\"$TO\",\"amount\":1}" \
        https://api.blockchainfue.com/api/asset
