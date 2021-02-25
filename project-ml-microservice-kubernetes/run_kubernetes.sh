#!/usr/bin/env bash

# This runs the container in a Kubernetes cluster

# Step 1:
# This is your Docker ID/path
dockerpath=peterheybrock/lesson5proj

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run myl5proj --image=$dockerpath --port=80


# Step 3:
# List kubernetes pods
echo "wait for 20 seconds for pod to start"
sleep 20
kubectl get pods

# Step 4:
# Forward the container port to a host (after pod is up)
kubectl port-forward pod/myl5proj 8000:80
