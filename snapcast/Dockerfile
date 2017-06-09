FROM %%BASE_IMAGE%%

# Add env
ENV LANG C.UTF-8

# Setup base
RUN apk add --no-cache tzdata wget 	
					   
# Snapcast, Shairport-sync,avahi and dbus					   
 					   
#RUN curl -L -o /root/out.deb 'https://github.com/badaix/snapcast/releases/download/v0.11.1/snapserver_0.11.1_amd64.deb' &&\
#    dpkg -i --force-all /root/out.deb &&\
#    apt-get -y -f install &&\
#    mkdir -p /root/.config/snapcast/ &&\
	

#RUN apt-get -qq autoremove &&\
#    apt-get -qq clean &&\
#    rm /root/out.deb &&\
#    rm -rf /var/lib/apt/lists/*


RUN wget 'https://github.com/badaix/snapcast/releases/download/v0.11.1/snapserver_0.11.1_amd64.deb'

RUN dpkg -i --force-all 'snapserver_0.11.1_amd64.deb'
RUN apt-get -f install -y

RUN mkdir -p /root/.config/snapcast/
	
	
	
# config-files
ADD ./asound.conf /etc/asound.conf
ADD ./librespot /usr/local/bin/librespot
	

# Copy data
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
