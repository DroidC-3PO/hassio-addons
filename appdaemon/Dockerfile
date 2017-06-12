FROM python:3.4


VOLUME /config

RUN mkdir -p /config/adddaemon
COPY conf/. /config/adddaemon/.

# Copy source
RUN mkdir -p /usr/src/app
COPY appdaemon/. /usr/src/app/.

# INSTALL
RUN pip3 install /usr/src/app/.


# Copy data
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]