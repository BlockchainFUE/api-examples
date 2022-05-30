#!/bin/bash
#
# Ejemplo de peticion de statis del API
#
MESSAGE="MigpjDA2Ft10qs5cCbO7QXN3BHpbX//kyn23Xa38SdVUn8VXCRBxa5QxTjxs/QbYEbX+4DuH0rnJgNMwBh9cAkhvbGEgUm9iZXJ0byE="
VERIFY_KEY="EmgoTZoHJCXk8DsSZ1b31wMoUmmc17193mM9oetQeFJb"
curl -v -H "X-Public-Key: Dq8FxK99G2rCApHSVwMyH3Tezp7UsSr1brLAAtrsP1xb"\
        -H "X-Private-Key: Eeu9pjMvV97ebnf8km3goq8fN8AiVAKFMzoLDqP3bpka"\
        -H "X-Api-Network: test"\
        -H "X-App-Id: 60796fedf245245c7443210c" \
        -H "X-App-Key: 4340472499d21403cd7de3da10bf8c08142f926e3ae076c4687b95543fd84600" \
        -H "Content-Type: application/json"\
        -H "Accept: application/json"\
        -X POST --data "{\"message\":\"$MESSAGE\",\"verify_key\":\"$VERIFY_KEY\"}"\
        https://api.blockchainfue.com/api/did/verify
         
