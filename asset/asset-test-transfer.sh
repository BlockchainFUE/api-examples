#!/bin/bash
#
# Ejemplo de transferencia de un activo por ID
#
TO=Dq8FxK99G2rCApHSVwMyH3Tezp7UsSr1brLAAtrsP1xb
TXID=8f2fc4476a22f3bb2d6ef32b95023552807de57213d9623b8d87ad19b82b56c5

curl -v -H "X-Public-Key: Dq8FxK99G2rCApHSVwMyH3Tezp7UsSr1brLAAtrsP1xb"\
        -H "X-Private-Key: Eeu9pjMvV97ebnf8km3goq8fN8AiVAKFMzoLDqP3bpka"\
        -H "X-Api-Network: test"\
        -H "X-App-Id: 60796fedf245245c7443210c" \
        -H "X-App-Key: 4340472499d21403cd7de3da10bf8c08142f926e3ae076c4687b95543fd84600" \
        -H "Content-Type: application/json"\
        -H "Accept: application/json"\
        -X PUT \
        --data  "{\"id\":\"$TXID\",\"to\":\"$TO\"}" \
        https://bcf-api-v2.blockchainfue.com/api/asset
