#!/bin/bash
#
# Ejemplo de obtencion de tokens, metodo GET
#
SEED=pericoeldelospalotes
PIN=1234
curl -v -H "Content-Type: application/json"\
        -H "Accept: application/json"\
         https://api.blockchainfue.com/api/keypair/$SEED/$PIN
         
