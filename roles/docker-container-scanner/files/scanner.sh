#!/bin/sh -x

docker container run \
    -v /auto/documents/Scans/Docker:/app/data/output \
    -v /var/run/dbus:/var/run/dbus \
    -u 0 \
    --net host \
    --privileged \
    --name scanner \
    --restart unless-stopped \
    -p 8080:8080 \
    -d \
    unixdude/scanservjs
