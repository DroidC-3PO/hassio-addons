FROM %%BASE_IMAGE%%

# Add env
ENV LANG C.UTF-8

# Setup base
#RUN apt-get -qq update &&\
#    apt-get -qq install build-essential git avahi-daemon avahi-utils dbus shairport-sync \
#        supervisor bzip2 portaudio19-dev libvorbisfile3 curl libprotoc-dev cargo
					   
					   
# Snapcast, Shairport-sync,avahi and dbus					   
 					   
RUN curl -L -o /root/out.deb 'https://github.com/badaix/snapcast/releases/download/v0.11.1/snapserver_0.11.1_amd64.deb' &&\
    dpkg -i --force-all /root/out.deb &&\
    apt-get -y -f install &&\
    mkdir -p /root/.config/snapcast/ &&\
	

RUN apt-get -qq autoremove &&\
    apt-get -qq clean &&\
    rm /root/out.deb &&\
    rm -rf /var/lib/apt/lists/*


# config-files
ADD ./asound.conf /etc/asound.conf
ADD ./librespot /usr/local/bin/librespot
	

# Copy data
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
