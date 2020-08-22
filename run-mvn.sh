#!/bin/bash

echo "hello"

echo "preparing to run: "
echo "$@"
export MYUID=$(id -u)
export MYGID=$(id -g)
docker run -it --rm --volume "$PWD"/://usr/src/app/  \
                    --user $MYUID:$MYGID \
                    --volume "$HOME"/.m2:"$HOME"/.m2 \
                    --volume="/etc/passwd:/etc/passwd:ro" \
                    --volume="/etc/shadow:/etc/shadow:ro" \
                    mvn-builder:1.0.0 "$@"