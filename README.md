# README

A continuación se encuentra la documentación del microservicio Customers

* Ruby version: 2.3.1

* Rails version: 5.0.6

* Postgres version: 9.5.3

* Database creation: La creación de la base de datos se realiza a través de docker-compose, el cual importa una imagen de postgres con la configuración por defecto

* Database initialization: Docker-Compose ejecuta la instrucción rake db:create y rake db:migrate para crear la base de datos en el servidor de bases de datos que se encentra en la imagen de docker y efectúa la migración de la base de datos creándo la tabla customers. La generación de la base de datos contempla segregación de las mismas en ambientes Develop, test y production. El microservicio utiliza la ase de datos de Production

La aplicación cuenta con una base de datos llamada Customers, la cual se encuentra compuesta por los siguientes campos y tipos de datos:
- numero_cedula:integer 
- nombre:text 
- telefono:text 
- direccion:text 
- correo:text

La aplicación cuenta con la funcionalidad que permite realizar las siguients operaciones sobre la base de datos:
* Crear Clientes
* Consultar un cliente
* Consultar todos los clientes
* Modificar un cliente
* Eliminar un cliente

Esta funcionalidad es utilizada como parte del proceso de creación de facturas, por lo cual, el front de facturación invoca al servicio de consulta bajo la siguiente estructura:
   /customers/id

De esta forma se consulta un cliente con base en su número de identificación 

Por último, se cuenta con una interfaz gráfica en la que se puede realizar la creación, consulta, modificación y eliminación de clientes.

