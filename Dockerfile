FROM ubuntu
MAINTAINER hyh <oxygen99999@hanmail.net>
COPY ./start.sh /
RUN chmod 755 /start.sh
RUN /start.sh
CMD bash
