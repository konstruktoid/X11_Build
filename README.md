# X11 with fluxbox and xrdp

A `X11` container with `fluxbox` and `xrdp`.

## Build and run

```sh
$ docker build --no-cache -t konstruktoid/x11 -f Dockerfile .
$ docker run -d -t -p 3389:3389 -t konstruktoid/x11
```

Note that IPv6 is required, so you might need to use `--net=host`.

Running container X11 applications requires `--privileged` and that you install `Docker` itself.

```sh
$ docker run -d -t --privileged -p 3389:3389 -t konstruktoid/x11
$ docker exec -ti x11_CONTAINER_ID sh
# apt-get update && apt-get -y install curl ca-certificates --no-install-recommends
# curl -sSL https://get.docker.com/ | sh
# usermod -aG docker totoro
```

## Default account

Connect with a RDP client.

Username: `totoro`  
Password: `HayaoMiyazaki`  

![](https://raw.githubusercontent.com/konstruktoid/X11_Build/master/coreos-X11.png)
