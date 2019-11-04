---
layout: "doc"
title: "Documentación del API"
date: "2019-10-30 18:57"
---

# Documentación del API

<!--ts-->
   * [Documentación del API](#documentación-del-api)
      * [Introducción](#introducción)
      * [Acceso al API](#acceso-al-api)
         * [Credenciales (funcion <strong>keypair</strong>)](#credenciales-funcion-keypair)
      * [¿Como obtengo una identidad?](#como-obtengo-una-identidad)
            * [Método <strong>GET</strong>](#método-get)
            * [Método <strong>POST</strong>](#método-post)
      * [Llamando al API](#llamando-al-api)
         * [URL](#url)
         * [Parámetros](#parámetros)
         * [Respuesta](#respuesta)
         * [Cabeceras necesarias](#cabeceras-necesarias)
            * [Autenticación](#autenticación)
            * [Formato](#formato)
            * [Tipo de RED](#tipo-de-red)
            * [Aplicación](#aplicación)
      * [Lenguajes soportados](#lenguajes-soportados)
      * [CRAB — Create, Retrieve, Append, Burn](#crabcreate-retrieve-append-burn)
         * [CREATE](#create)
         * [RETRIEVE](#retrieve)
         * [APPEND](#append)
         * [BURN](#burn)
      * [Funciones del API](#funciones-del-api)
         * [función /api/status](#función-apistatus)
            * [URL](#url-1)
            * [Parametros](#parametros)
            * [Ejemplo](#ejemplo)
            * [Respuesta](#respuesta-1)
         * [función /api/keypair](#función-apikeypair)
            * [URL](#url-2)
            * [Parametros](#parametros-1)
            * [Ejemplo](#ejemplo-1)
            * [Respuesta](#respuesta-2)
         * [función /api/asset/](#función-apiasset)
            * [URL](#url-3)
            * [Parámetros](#parámetros-1)
            * [Ejemplo](#ejemplo-2)
            * [Respuesta](#respuesta-3)
            * [URL](#url-4)
            * [Parámetros](#parámetros-2)
            * [Parametros](#parametros-2)
            * [Ejemplo](#ejemplo-3)
            * [Respuesta](#respuesta-4)
            * [URL](#url-5)
            * [Parámetros](#parámetros-3)
            * [Ejemplo](#ejemplo-4)
            * [Respuesta](#respuesta-5)
         * [función /api/asset/:id](#función-apiassetid)
            * [URL](#url-6)
            * [Parametros](#parametros-3)
            * [Ejemplo](#ejemplo-5)
            * [Respuesta](#respuesta-6)
            * [Campos en la respuesta.](#campos-en-la-respuesta)
         * [función](#función)
            * [URL](#url-7)
            * [Parámetros](#parámetros-4)
            * [Ejemplo](#ejemplo-6)
            * [Respuesta](#respuesta-7)

<!-- Added by: rampa, at: vie nov  1 21:22:41 CET 2019 -->

<!--te-->

## Introducción

Esta es la documentación en Español para la utilización del API REST de [BlockchainFUE](http://blockchainfue.com "BlockchainFUE"). Este API le permite realizar sus propias aplicaciones de blockchain integrando nuestros servicios de creación y recuperación de activos y tokens.

El API se presenta como un conjunto de servicios **RESTFUL** que pueden ser utilizados mediante protocolo HTTP por cualquier tipo de aplicación capaz de hacer llamadas HTTP con métodos **GET**, **POST**, **PUT**, **DELETE**...

## Acceso al API
### Credenciales (funcion **keypair**)
Tal y como hemos mencionado antes, necesitará incluir sus credenciales en cada llamada al API. Al tratarse de un sistema **RESTFUL**, no se mantienen estados entre las llamadas y por tanto tampoco hay una cookie que pueda mantener una autenticación de sesión.

Para enviar las credenciales se deben utilizar dos cabeceras en la petición:

cabecera        | valor
----------------|----------------------
**X-Public-Key**	| Clave pública de la identidad
**X-Private-Key**	| Clave privada de la identidad

## ¿Como obtengo una identidad?
Para obtener una identidad, necesita llamar a la funcion **keypair** Esta función es accesible mediante métodos **GET** y **POST**. en la llamada a esta función se requeriran dos parámetros.

párametro       | tipo |descripción
----------------|------|---------------
**seed**	| string |texto complejo pero fácil de recordar (por ejemplo DNI, una frase, etc.)
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
Asimismo, cuando la respuesta necesite incluir información, esta será enviada en formato **JSON** o **XML** e incluida dentro del cuerpo de dicha respuesta.

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

## CRAB — Create, Retrieve, Append, Burn

En las bases de datos actuales, estamos familiarizados con las iniciales  CRUD. CRUD es la abreviatura de Crear, Leer, Actualizar  Eliminar (Create, Read, Update,Delete en inglés). Estas son las operaciones básicas de un almacén de datos persistentes.
BlockchainFUE se comporta como una base de datos, pero al estar basada en blockchain, no es posible actualizar ni borrar (esto en el .

### CREATE
Podemos crear activos y tokens (Básicamente es lo mismo, pero un activo no es divisible y un token sí). Para crear utilizaremos el método POST de las funciones.
### RETRIEVE
Podemos consultar el activo creado con anterioridad. Para consultar utilizaremos el método GET de las funciones.
### APPEND
Mediante sucesivas transferencias del activo (podemos transferirlo  a nosotros mismos) podemos añadir metadatos al activo. Para añadir metadatos (actualizar), utilizaremos el método PUT de las funciones.
### BURN
El fin de vida de un activo nunca será el borrado. Será transferido a una identidad con clave privada aleatoria, Una vez hecho esto, nunca más podrá ser transferido al no ser sus poseedores. Para quemar un activo, utilizaremos el método DELETE de las funciones.




## Funciones del API

A continuación explicamos cada uno de los recursos y sus parámetros.

### función /api/status
Devuelve el estado de los servicios del API y la hora actual del nodo (sincronizada por **NTP**)
#### URL
[GET] https://api.blockchainfue.com/api/status
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
### función /api/keypair
#### URL
```
[GET] https://api.blockchainfue.com/api/keypair
```
o
```
[POST] https://api.blockchainfue.com/api/keypair
```
#### Parametros
párametro       | tipo |descripción
----------------|--------|---------------
**seed**	| string |Algo que podemos recordar fácilmente y que puede ser conocida por las dos partes. Se utiliza como semilla para el generador de números aleatorios.
**pin**	        | string |Algo que solo nosotros sabemos. Aunque el nombre sugiera lo contrario, puede ser alfanumerico de cualquier longitud, pero ojo, no se almacena en ningún sitio.

Olvidar cualquiera de los dos parámetros, llevara a perder todos los activos de esa identidad….


#### Ejemplo
Método **GET**
```bash
SEED=pericoeldelospalotes
PIN=1234
curl -v -H "Content-Type: application/json"\
        -H "Accept: application/json"\
         https://api.blockchainfue.com/api/keypair/$SEED/$PIN
```

Método **POST**
```bash

SEED=pericodelospalotes
PIN=1234
curl -v -H "Content-Type: application/json"\
        -X POST --data "{\"seed\":\"$SEED\",\"pin\":\"$PIN\"}"\
         https://api.blockchainfue.com/api/keypair

```
#### Respuesta

```json
{"ok":true,
 "msg":"Generated keypair",
 "pub":"DQnEiE3NTFj2GwMCCho3eDxLuAN62zv2LLNxHbDDNZeE",
 "pvt":"E2XxnGrHnujww2oeYyL3WhQJ3QUzKifbTmKLyGeibETM"
 }
```

### función /api/asset/

el método **POST** se usa para crear **ACTIVOS**.

#### URL
```
[POST] https://api.blockchainfue.com/api/asset
```

#### Parámetros
Campo       | Tipo    |Descripción
------------|---------|---------------
**net**	    | string  | Red donde se encuentra el activo.
**msg**     | string  | Mensaje
**asset**	  | JSON    | Estructura conteniendo los datos del activo.

#### Ejemplo
```bash
curl -v -H "X-Public-Key: 7u5gdTkzX39WDHMyCGhZcHUvmWw2wxXJUNVP3ohGxmWu"\
        -H "X-Private-Key: GAQZY4zLw86aiHPA2oLDukSHXhyBnpBVDa5YzMfqa1wT"\
        -H "X-Api-Network: test"\
        -H "X-App-Name: hackaton-boot-01" \
        -H "Content-Type: application/json"\
        -H "Accept: application/json"\
        -X POST --data "{\"asset\":{\"type\":\"test-asset\",\"name\":\"test001\",\"data\":{\"test\":true,\"app\":\"curl\"}}}"\
         https://api.blockchainfue.com/api/asset
```
#### Respuesta
```json
{"ok":true,"msg":"Asset created","net":"test","id":"ddb18379fae0550c2385245613b2b595c279848526e1fcc4729c16c93c743e26"}
```

Para transferir (y modificar) **ACTIVOS** se usa el método **PUT**. El activo pasara a la nueva identidad (que puede ser nuestra propia clave pública) y se añadira la informacion contenida en el parametro **metadata**

#### URL
```
[PUT] https://api.blockchainfue.com/api/asset/:id
```
#### Parámetros
#### Parametros
párametro    | tipo    |descripción
-------------|---------|---------------
**to**	     | string  | identidad a la que se transfiere el activo.
**metadata** | JSON    | estructura JSON a escribir.

#### Ejemplo
```bash
curl -v -H "X-Public-Key: 7u5gdTkzX39WDHMyCGhZcHUvmWw2wxXJUNVP3ohGxmWu"\
        -H "X-Private-Key: GAQZY4zLw86aiHPA2oLDukSHXhyBnpBVDa5YzMfqa1wT"\
        -H "X-Api-Network: test"\
        -H "X-App-Name: hackaton-boot-01" \
        -H "Content-Type: application/json"\
        -X PUT --data "{\"to\":\"ERJmMB4kdxmCEm44NyBYify3r8tcHQ8zzMruNjBHtgdq\",\"metadata\":{\"test\":true,\"app\":\"curl\"}}"\
         https://api.blockchainfue.com/api/asset/accdeaf6a461daff042bec6efb00338a5653ad55af3ed688484feea34cd27df4
```

#### Respuesta
```json
{"ok":true,"net":"test","msg":"Asset updated","id":"5ed46969cf66df770acb3d63c7479ca7f1edb6981f72f303d4ba789f88da5615"}
```

Para **Quemar** activos (no se borran, pero pasan a otra identidad de la cual nunca se podran sacar) se utiliza el método **DELETE**.

#### URL
```
[DELETE] https://api.blockchainfue.com/api/asset/:id
```
#### Parámetros
párametro   | tipo    |descripción
------------|---------|---------------
**:id**	    | string  | id del activo obtenido durante su creación.

#### Ejemplo
```bash
curl -v -H "X-Public-Key: 7u5gdTkzX39WDHMyCGhZcHUvmWw2wxXJUNVP3ohGxmWu"\
        -H "X-Private-Key: GAQZY4zLw86aiHPA2oLDukSHXhyBnpBVDa5YzMfqa1wT"\
        -H "X-Api-Network: test"\
        -H "X-App-Name: hackaton-boot-01" \
        -H "Content-Type: application/json"\
        -X DELETE \
         https://api.blockchainfue.com/api/asset/0285d55a8ffc9b1fdf7b9af07fe930242b8a6eec8da4ceb0fc8b64f846775c46
```
#### Respuesta
```json
{
      "ok":  true,
      "net": "test",
      "msg": "Asset burnt",
      "id": "0285d55a8ffc9b1fdf7b9af07fe930242b8a6eec8da4ceb0fc8b64f846775c46"}
    )

```

### función /api/asset/:id
consultar **ACTIVOS** mediante su identificación.

#### URL
```
[GET] https://api.blockchainfue.com/api/asset
```
#### Parametros
párametro   | tipo    |descripción
------------|---------|---------------
**:id**	    | string  | id del activo obtenido durante su creación.
**history** | boolean | obtiene un historial del activo.

#### Ejemplo
```bash
curl -v -H "X-Public-Key: 7u5gdTkzX39WDHMyCGhZcHUvmWw2wxXJUNVP3ohGxmWu"\
        -H "X-Private-Key: GAQZY4zLw86aiHPA2oLDukSHXhyBnpBVDa5YzMfqa1wT"\
        -H "X-Api-Network: test"\
        -H "X-App-Name: hackaton-boot-01" \
        -H "Content-Type: application/json"\
        https://api.blockchainfue.com/api/asset/accdeaf6a461daff042bec6efb00338a5653ad55af3ed688484feea34cd27df4
```
#### Respuesta
```json
{"ok":true,
 "net":"test",
 "msg":"Your asset",
 "asset":
   {"id":"accdeaf6a461daff042bec6efb00338a5653ad55af3ed688484feea34cd27df4",
    "data":
    {"test":true,
      "app":"curl",
      "apimeta":
        {"type":"bcfapi:hackaton-boot-01:test-asset",
         "token":false,
         "name":"test001",
         "action":"CREATE",
         "creator":"7u5gdTkzX39WDHMyCGhZcHUvmWw2wxXJUNVP3ohGxmWu",
         "when":1572433587642
       }
    },
    "history":[]
  }
}
```
#### Campos en la respuesta.

Campo       | Tipo    |Descripción
------------|---------|---------------
**net**	    | string  | Red donde se encuentra el activo.
**msg**     | string  | Mensaje
**asset**	  | JSON    | Estructura conteniendo los datos del activo.






### función
#### URL
#### Parámetros
#### Ejemplo
```bash
```
#### Respuesta
```json
```
