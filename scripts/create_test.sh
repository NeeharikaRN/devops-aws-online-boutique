#!/bin/bash
NAMESPACE="test"
if kubectl get namespace "$NAMESPACE" > /dev/null 2>&1; then
  echo "Namespace '$NAMESPACE' already exists."
else
  echo "Namespace '$NAMESPACE' does not exist. Creating it..."
  kubectl create namespace "$NAMESPACE"
fi