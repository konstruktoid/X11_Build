# Force autobuild 1436387942

FROM konstruktoid/debian:wheezy

ENV UN totoro
ENV PW HayaoMiyazaki

COPY files/runRDP.sh /runRDP.sh

RUN \
    apt-get update && \
    apt-get -y upgrade && \
    apt-get -y install fluxbox eterm xrdp xterm && \
    apt-get -y clean && \
    apt-get -y autoremove && \
    rm -rf /var/lib/apt/lists/* \
      /usr/share/doc /usr/share/doc-base \
      /usr/share/man /usr/share/locale /usr/share/zoneinfo

RUN \
    useradd -m  --user-group --shell /bin/sh $UN && \
    echo "$UN:$PW" | chpasswd && \
    echo "startfluxbox" > /home/$UN/.xsession && \
    chown $UN:$UN /home/$UN/.xsession && \
    mkdir -p /home/$UN/.fluxbox/ && \
    chown -R $UN:$UN /home/$UN/.fluxbox/ && \
    mkdir -p /usr/share/doc/xrdp/ && \
    service xrdp start && \
    service xrdp stop && \
    rm /var/run/xrdp/*.pid

CMD ["/runRDP.sh"]
