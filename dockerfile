FROM ubuntu:18.04

#Actualiza la imagen base de Ubuntu 16.04
RUN apt-get update

# Ejecuta el commando apt-get install y elimina determinados archivos y temporales
RUN apt-get install -y nginx 

#borra el archivo y copia el nuestro que esta junto al dockerfile
RUN rm -f /usr/share/nginx/html/index.html
#
ADD index.html /usr/share/nginx/html

#Indica los puertos TCP/IP los cuales se pueden accede a los servicios del contenedor
EXPOSE '8080'

CMD ["nginx", "-g", "daemon off;"]
