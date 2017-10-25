# Ejemplo de dockerfile de la presentación de Javier Martínez Nohales.
# https://github.com/jmnohales/rhel7_container/blob/master/Dockerfile

# Módulo simplehttpserver: https://docs.python.org/2/library/simplehttpserver.html

FROM registry.access.redhat.com/rhel7/rhel
MAINTAINER Javier Martinez Nohales <jmn@redhat.com>
EXPOSE 8080
RUN mkdir /docroot 
RUN ln -s /etc/hostname /docroot/index.html
WORKDIR "/docroot"
CMD [ "python", "-m", "SimpleHTTPServer", "8080" ]
