#!/bin/bash
echo Building docker image - primerserver2:0.1
docker build --tag  primerserver2:0.1 .
docker run -it --name primerserver2 primerserver2:0.1
echo """
*** Image Built ***
Hope it worked!

To use it type:
    docker exec -it primerserver2 bash

To copy files to it type:
    docker copy host_source primerserver2:destination

To copy files from it type:
    docker copy primerserver2:source host_destination

Good luck, you might need it.
