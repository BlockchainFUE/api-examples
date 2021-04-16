#!/bin/bash
#
# Ejemplo de lectura de un activo por ID
#

TXID=d4e51899fc8cbfc05a241de28599808b5e2d22230ce16c12735c0119d34413f7

curl -v -H "X-Public-Key: Dq8FxK99G2rCApHSVwMyH3Tezp7UsSr1brLAAtrsP1xb"\
        -H "X-Private-Key: Eeu9pjMvV97ebnf8km3goq8fN8AiVAKFMzoLDqP3bpka"\
        -H "X-Api-Network: test"\
        -H "X-App-Id: 60796fedf245245c7443210c" \
        -H "X-App-Key: 4340472499d21403cd7de3da10bf8c08142f926e3ae076c4687b95543fd84600" \
        -H "Content-Type: application/json"\
        -H "Accept: application/json"\
        -G \
        --data-urlencode  "query={\"id\":\"$TXID\"}" \
        https://bcf-api-v2.blockchainfue.com/api/asset
        
         
     
