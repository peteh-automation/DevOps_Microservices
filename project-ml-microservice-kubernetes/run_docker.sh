#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build --tag=lesson5proj .

# Step 2: 
# List docker images
docker image ls

# Step 3: 
# Run flask app
# docker run -it lesson5proj bash
docker run --rm -p 8000:80 lesson5proj