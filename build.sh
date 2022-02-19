#!/bin/bash

set -e

if [ ! -x "$(command -v docker)" ]; then
    echo "=> Docker not installed, aborting."
fi

echo "=> Build plugin with Maven using Docker."
docker run -it --rm -v "$(pwd)":/usr/src/plugin -w /usr/src/plugin maven:3.8.4-jdk-11 mvn clean package
echo "=> Build finished."
