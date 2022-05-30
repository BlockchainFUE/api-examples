#!/bin/bash
#
# Ejemplo de peticion de statis del API
#
MESSAGE="El patinete cuesta 2 euros."
PRIVATE_KEY="6eucaVfDMdULxKyZwd6yReJjr6Z6ExbvCH3YuNK8pXtw"
PUBLIC_KEY="DSN8Vq2jK1xepbMKuDoMjoZ63EudfF3BBogip3TV6fYE"
curl -v -H "X-Public-Key: Dq8FxK99G2rCApHSVwMyH3Tezp7UsSr1brLAAtrsP1xb"\
        -H "X-Private-Key: Eeu9pjMvV97ebnf8km3goq8fN8AiVAKFMzoLDqP3bpka"\
        -H "X-Api-Network: test"\
        -H "X-App-Id: 60796fedf245245c7443210c" \
        -H "X-App-Key: 4340472499d21403cd7de3da10bf8c08142f926e3ae076c4687b95543fd84600" \
        -H "Content-Type: application/json"\
        -H "Accept: application/json"\
        -X POST --data "{\"message\":\"$MESSAGE\",\"from_private_key\":\"$PRIVATE_KEY\",\"to_public_key\":\"$PUBLIC_KEY\"}"\
        https://api.blockchainfue.com/api/did/encrypt
         
