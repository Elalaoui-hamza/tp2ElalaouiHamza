@echo off
call mvn clean package
call docker build -t ma.emsi/tp2ElalaouiHamza .
call docker rm -f tp2ElalaouiHamza
call docker run -d -p 9080:9080 -p 9443:9443 --name tp2ElalaouiHamza ma.emsi/tp2ElalaouiHamza