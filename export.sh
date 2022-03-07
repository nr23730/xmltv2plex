#!/bin/bash

mkdir -p /tmp

while true; do

    wget ${TVH_URL}/xmltv/channels --user=${TVH_USER} --password=${TVH_PASSWORD} -O /tmp/iptvGuide.xml
    sleep 15
    xmlstarlet ed -u "//programme/@start" -x "concat(substring(., 0, 9), substring(string(1000000 + substring(., 9, 6)), 2))" -u "//programme/@stop" -x "concat(substring(., 0, 9), substring(string(1000000 + substring(., 9, 6)), 2))" /tmp/iptvGuide.xml > /output/iptvGuide.xml
    rm /tmp/iptvGuide.xml

    sleep ${INTERVAL}

done