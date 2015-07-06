# X11 with fluxbox and xrdp
A `X11` container with `fluxbox` and `xrdp`.  

### Tested on
```sh
Distributor ID: Ubuntu
Description:  Ubuntu 14.04.2 LTS
Release:  14.04
Codename: trusty
```
```sh
DISTRIB_ID=CoreOS
DISTRIB_RELEASE=681.2.0
DISTRIB_CODENAME="Red Dog"
DISTRIB_DESCRIPTION="CoreOS 681.2.0"
```

### Build and run
```sh
$ docker build -t x11 -f Dockerfile .
$ docker run -d -t -p 3389:3389 -t x11
```

Running container X11 applications requires `--privileged` and that you install `Docker` itself.  

```sh
# docker run -d -t --privileged -p 3389:3389 -t x11
$ docker exec -ti x11_CONTAINER_ID sh
# apt-get install curl ca-certificates --no-install-recommends
# curl -sSL https://get.docker.com/ | sh
# usermod -aG docker totoro
```

### Default account
Connect with a RDP client.  

Username: `totoro`  
Password: `HayaoMiyazaki`  

![](https://raw.githubusercontent.com/konstruktoid/X11_Build/master/coreos-X11.png)
