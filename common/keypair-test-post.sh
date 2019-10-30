#!/bin/bash
#
# Ejemplo de escritura 
# keypair generado con: https://api.blockchainfue.com/api/keypair/pericoeldelospalotes/1234
#
SEED=pericodelospalotes
PIN=1234
curl -v -H "Content-Type: application/json"\
        -X POST --data "{\"seed\":\"$SEED\",\"pin\":\"$PIN\"}"\
         https://api.blockchainfue.com/api/keypair
