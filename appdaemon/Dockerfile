FROM python:3.4


VOLUME /config

RUN mkdir -p /config/adddaemon
COPY config/ /config/adddaemon

# Copy source
WORKDIR /usr/src/app
RUN mkdir -p /usr/src/app
COPY appdaemon/ .

# INSTALL
RUN pip3 install .

CMD [ "appdaemon", "-c", "/config/appdaemon.cfg" ]