#!/bin/bash
$DOCKER_IMAGE=
docker run -it --rm --cap-add sys_module -v /lib/modules:/lib/modules $DOCKER_IMAGE install-module
