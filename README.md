---
layout: "doc"
title: "Documentación del API"
date: "2019-10-30 18:57"
---

# Documentación del API

## Introducción

Esta es la documentación en Español para la utilización del API REST de [BlockchainFUE](http://blockchainfue.com "BlockchainFUE"). Este API le permite realizar sus propias aplicaciones de blockchain integrando nuestros servicios de creación y recuperación de activos y tokens.

El API se presenta como un conjunto de servicios **RESTFUL** que pueden ser utilizados mediante protocolo HTTP por cualquier tipo de aplicación capaz de hacer llamadas HTTP con métodos **GET**, **POST**, **PUT**, **DELETE**...

## Acceso al API
### Credenciales
Tal y como hemos mencionado antes necesitará incluir sus credenciales en cada llamada al API. Al tratarse de un sistema **RESTFUL**, no se mantienen estados entre las llamadas y por tanto tampoco hay una cookie que pueda mantener una autenticación de sesión.

Para enviar las credenciales se deben utilizar dos cabeceras en la petición:

cabecera        | valor
----------------|----------------------
**X-Public-Key**	| Clave pública de la identidad
**X-Private-Key**	| Clave privada de la identidad

