#!/bin/sh
mvn clean package && docker build -t ma.emsi/tp2ElalaouiHamza .
docker rm -f tp2ElalaouiHamza || true && docker run -d -p 9080:9080 -p 9443:9443 --name tp2ElalaouiHamza ma.emsi/tp2ElalaouiHamza