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
### Credenciales (funcion **keypair**)
Tal y como hemos mencionado antes necesitará incluir sus credenciales en cada llamada al API. Al tratarse de un sistema **RESTFUL**, no se mantienen estados entre las llamadas y por tanto tampoco hay una cookie que pueda mantener una autenticación de sesión.

Para enviar las credenciales se deben utilizar dos cabeceras en la petición:

cabecera        | valor
----------------|----------------------
**X-Public-Key**	| Clave pública de la identidad
**X-Private-Key**	| Clave privada de la identidad

## ¿Como obtengo una identidad?
Para obtener una identidad, necesita llamar a la funcion **keypair** Esta función es accesible mediante métodos **GET** y **POST**. en la llmada a esta función se requeriran dos parámetros.

párametro       | tipo |descripción
----------------|------|---------------
**seed**	| string |texto complejo pero fácil de recordar (por ejemplo DNI,una frase,etc)
**pin**	  | string |texto secreto que se puede pedir al usuario en el fúturo para rehacer su identidad. **NO DEBE OLVIDARLO**


#### Método **GET**
```bash
#!/bin/bash
#
# Ejemplo de obtencion de tokens, metodo GET
#
SEED=pericoeldelospalotes
PIN=1234
curl -v -H "Content-Type: application/json"\
        -H "Accept: application/json"\
         https://api.blockchainfue.com/api/keypair/$SEED/$PIN
```
#### Método **POST**
````bash
#!/bin/bash
#
# Ejemplo de peticion de claves POST
#
SEED=pericodelospalotes
PIN=1234
curl -v -H "Content-Type: application/json"\
        -X POST --data "{\"seed\":\"$SEED\",\"pin\":\"$PIN\"}"\
         https://api.blockchainfue.com/api/keypair

````

## Llamando al API
### URL
Todas las llamadas al API se hacen mediante la misma URL base:
https://api.blockchainfue.com/api

### Parámetros
Todos los parámetros, cuando se trate de un método POST, serán enviados en formato **JSON** o **XML** en el **BODY** de la petición, indicando el formato en la cabecera **Content-Type**. Por tanto lo primero que debe codificar es una función que sea capaz de enviar peticiones mediante método **POST** adjuntando un arreglo en formato **JSON/XML** en el cuerpo de la misma.

### Respuesta
Asimismo cuando la respuesta necesite incluir información, esta será enviada en formato **JSON** o **XML** e incluida dentro del cuerpo de dicha respuesta.

### Cabeceras necesarias
#### Autenticación

cabecera        | valor
----------------|----------------------
**X-Public-Key**	| Clave pública de la identidad
**X-Private-Key**	| Clave privada de la identidad

#### Formato
Cabecera	|Tipo|	Valores |	Descripción
----------|----|----------|------------
Content-Type|	Cadena, mime-type|	application/json, application/xml|	Cuando se envíen datos, formato de los datos en el cuerpo de la petición.
Accept	|Cadena, mime-type	| application/json, application/xml	| Formato en el que se quiere recibir la respuesta del API.

#### Tipo de RED
cabecera          | tipo |valores
------------------|------|---------------
**X-Api-Network** |Cadena|main,test (main para trabajar en red principal, test para testnet)

#### Aplicación
cabecera          | tipo |valor
------------------|------|---------------
**X-App-Name**    |Cadena| Nombre de la aplicación



## Lenguajes soportados
Para hablar con el API de BlockchainFUE puede utilizar cualquier lenguaje de programación que soporte la realización de llamadas **HTTPS**, así como el proceso de matrices en formato **JSON** o **XML**, es decir cualquiera de los lenguajes modernos e incluso muchos de los antiguos.

## Funciones del API

A continuación explicamos cada uno de los recursos y sus parámetros.

### status
#### URL
https://api.blockchainfue.com/api/status
#### Parametros
Este método no necesita parámetros.
#### Ejemplo
```bash
curl -v -H "X-Public-Key: 7u5gdTkzX39WDHMyCGhZcHUvmWw2wxXJUNVP3ohGxmWu"\
        -H "X-Private-Key: GAQZY4zLw86aiHPA2oLDukSHXhyBnpBVDa5YzMfqa1wT"\
        -H "X-Api-Network: test"\
        -H "X-App-Name: hackaton-boot-01" \
        -H "Content-Type: application/json"\
        -H "Accept: application/json"\
         https://api.blockchainfue.com/api/status
```
#### Respuesta
```json
{"ok":true,"msg":"API services UP","ts":1572463033445}
```


