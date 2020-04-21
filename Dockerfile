FROM ubuntu
MAINTAINER The finfra.com Project NamJungGu <nowage@gmail.com>
# ENV LC_ALL en_US.UTF-8

COPY ./install.sh /
COPY ./start.sh /
RUN chmod 755 /install.sh
RUN chmod 755 /start.sh
RUN /install.sh
CMD /start.sh
