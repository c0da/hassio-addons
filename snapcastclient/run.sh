#!/bin/bash
set -e
host=$(jq -r '.host // empty' /data/options.json)
soundcard=$(jq -r '.host // empty' /data/options.json)
if [ -n "${host}" ];
then
    host="-h ${host}"
fi
if [ -n "${soundcard}" ];
then
    soundcard="-s ${soundcard}"
fi

snapclient ${host} ${soundcard}
