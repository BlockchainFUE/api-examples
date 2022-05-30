#!/bin/bash
#
# Ejemplo de transferencia de un activo por ID
#
TO=Dq8FxK99G2rCApHSVwMyH3Tezp7UsSr1brLAAtrsP1xb
TXID=0f144d9dfae5a4efa5fe58e129d797159ed1846c9cb51031d408440b2ee39474
PIEZA=$1

curl -v -H "X-Public-Key: Dq8FxK99G2rCApHSVwMyH3Tezp7UsSr1brLAAtrsP1xb"\
        -H "X-Private-Key: Eeu9pjMvV97ebnf8km3goq8fN8AiVAKFMzoLDqP3bpka"\
        -H "X-Api-Network: test"\
        -H "X-App-Id: 60796fedf245245c7443210c" \
        -H "X-App-Key: 4340472499d21403cd7de3da10bf8c08142f926e3ae076c4687b95543fd84600" \
        -H "Content-Type: application/json"\
        -H "Accept: application/json"\
        -X PUT \
        --data  "{\"id\":\"$TXID\",\"to\":\"$TO\",\"metadata\":{\"pieza\":\"$PIEZA\"}}" \
        https://api.blockchainfue.com/api/asset
