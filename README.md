`X11` container with `fluxbox` and `xrdp`.  


```sh
DISTRIB_ID=CoreOS
DISTRIB_RELEASE=681.2.0
DISTRIB_CODENAME="Red Dog"
DISTRIB_DESCRIPTION="CoreOS 681.2.0"
```


```sh
$ docker build -t x11 -f Dockerfile .
$ docker run -d -t -p 3389:3389 -t x11
```

Default account below, container could use volumes for host accounts. Connect with a RDP client.  

Username: rdpuser  
Password: HayaoMiyazaki  
