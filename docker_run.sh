#!/bin/sh

docker run -d \
  --name qemu-agent \
  --restart=unless-stopped \
  --privileged=true \
  --cap-add=ALL \
  --net=host \
  -v /dev/virtio-ports:/dev/virtio-ports \
  -v /etc/os-release:/etc/os-release:ro \
  -v /dev:/dev \
  -v /proc:/hostproc \
  -v /run/systemd:/run/systemd \
  -v /var/log/ovirt-guest-agent:/var/log/ovirt-guest-agent \
  -v /var/run/docker.sock:/var/run/docker.sock:ro \
  coreos-qemu-agent
