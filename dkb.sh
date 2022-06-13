#!/bin/bash
docker stop dangcontainer
docker build -t fpt:latest .
