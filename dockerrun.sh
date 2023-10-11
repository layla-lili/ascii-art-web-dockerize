#!/bin/bash

# Build the Docker image
docker build -t asciiweb . 

# Run docker 
docker run -d -p 8081:8081 asciiweb