#!/usr/bin/env bash

docker build --pull -t ragibkl/rainloop -f ./Dockerfile .
docker push ragibkl/rainloop
