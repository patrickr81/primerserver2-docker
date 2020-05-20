#!/bin/bash
echo Building docker image - primerserver2:0.1
docker build --tag  primerserver2:0.1 .
docker run -it --name primerserver2 primerserver2:0.1
echo *** Image Built ***
echo Hope it worked!
echo 
echo To use it type:
echo    docker exec -it primerserver2 bash
echo
echo To copy files to it type:
echo    docker copy <source directory> .
echo
echo Good luck, you might need it.