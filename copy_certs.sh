#!/bin/bash
set -e
set -o pipefail

registry_host="192.168.99.100"
registry_port="31000"
registry_host_port="${registry_host}:${registry_port}"


mkdir --parents "/etc/docker/certs.d/$registry_host_port/"
echo "copying certs"
kubectl get secret registry-cert \
  -o go-template --template '{{(index .data "ca.crt")}}' \
  | base64 -d \
  > "/etc/docker/certs.d/$registry_host_port/ca.crt"
echo "Sucessfully copied certs"

