#!/bin/bash
RADIUS_CONF_DIR=
WIREGUARD_CONF_DIR=
WIREGUARD_PORT=
DOCKER_IMAGE=
docker run --cap-add net_admin --cap-add sys_module \
  -v $RADIUS_CONF_DIR:/etc/freeradius/3.0 -v $WIREGUARD_CONF_DIR:/etc/wireguard \
  -p $WIREGUARD_PORT:$WIREGUARD_PORT/udp \
  $DOCKER_IMAGE
