# Segunda Evaluacion Continua de IoT
Primeramente se hace la instalacion y configuacion del Capitulo 7 del libro de referencia **(Build Your Own IoT Platform)**

## 1. Requerimiento Basico
- Docker

## 2. Instalacion

Los bloques de servicios requeridos son : 

1. MySQL
2. PhpMyAdmin
3. Mosquitto
4. Node-Red

Estos servicios estan en el archivo [docker](docker-compose.yml)

Para instalar los servicios, se ejecuta lo siguiente:
```bash
docker-compose up
```

Tambien se puede instalar y mostrar todo lo que se haga en la terminal
con el siguiente comando:
``` docker run -it docker-compose bash 
```

## 3. Base de Datos : Creacion 
1. Ingresar al enlace (puerto) http://localhost:8080/phpmyadmin/
2. Seleccionar la pestana de **Bases de datos**. 
3. Asignar el nombre de **tSeriesDB** (nombre sugerido por el libro).
4. Elegir la codificación de **utf8_general_ci**.
5. Finalmente seleccionar el boton **Crear**.

## 3. Base de Datos : Importacion

1. Seleccionar **tSeriesDB**.
2. Seleccionar boton **Importar**.
3. Buscar el archivo [tSeriesDB.sql](Base_Datos/tSeriesDB.sql).
4. Seleccionar el boton **Continuar**.



## 4. NODE-RED : Instalacion de nodos
1. Ingresar a **Node-RED** en el navegador (si usa Ubuntu puede instalar desde la tienda de apps)
2. Seleccionar **Manage Palette**.
3. Visualizar la subventana **User Settings** y escribir **MySQL**, esto le permitira listar todos los nodos disponibles. 
4. Instalar *node-red-node-MySQL*.

Ojo : Es muy importante tener en cuenta que Node-Red, en su instalacion por defecto no posee un nodo entrar a MySQL.

## 5. Flujos Node-Red : Importacion
>>> Formato de flujo : JSON
>>> Carpeta : [Flujos_RN](Flujos_RN)

1. Seleccionar el boton **opciones**.
2. Seleccionar **import**.
3. Esto agrega los archivos Json a la carpeta

## 6. Pruebas
Ejecutar los siguientes comandos
```bash
curl -X POST "localhost:1880/pub/myTopic/myPayload" -i
```

```bash
curl -X GET "localhost:1880/get/myTopic" -i
```


## Estudiante
- Miguel Alexander, Herrera Cooper

