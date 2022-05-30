#!/bin/bash
#
# Ejemplo de peticion de statis del API
#
# El seed se puede generar con:  'openssl rand -hex 16' (16 bytes hexa = 32 caracteres)
#
#
SEED="54006a2c040cf0f131948d0c31dce5e8d2f263158c1561c64a2118f483520444"
SNAKE="true"
curl -v -H "X-Public-Key: Dq8FxK99G2rCApHSVwMyH3Tezp7UsSr1brLAAtrsP1xb"\
        -H "X-Private-Key: Eeu9pjMvV97ebnf8km3goq8fN8AiVAKFMzoLDqP3bpka"\
        -H "X-Api-Network: test"\
        -H "X-App-Id: 60796fedf245245c7443210c" \
        -H "X-App-Key: 4340472499d21403cd7de3da10bf8c08142f926e3ae076c4687b95543fd84600" \
        -H "Content-Type: application/json"\
        -H "Accept: application/json"\
        -X POST --data "{\"seed\":\"$SEED\",\"snake_case\":$SNAKE}"\
        https://api.blockchainfue.com/api/did
         
