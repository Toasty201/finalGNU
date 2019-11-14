FROM ubuntu:18.04

#Actualiza la imagen base de Ubuntu 16.04
RUN apt-get update

# Ejecuta el commando apt-get install y elimina determinados archivos y temporales
RUN apt-get install -y nginx 

#borra el archivo y copia el nuestro que esta junto al dockerfile
#RUN rm -f /usr/share/nginx/html/index.html
RUN rm -f /var/www/html/index.html

#ADD index.html /usr/share/nginx/html

ADD index.html /var/www/html

#Indica los puertos TCP/IP los cuales se pueden accede a los servicios del contenedor
EXPOSE '80'

RUN echo "ServerName 127.0.01:80"
#Establece el commando del proceso de inicio del contenedor

CMD ["nginx", "-g", "daemon off;"]
