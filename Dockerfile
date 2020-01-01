FROM ubuntu

MAINTAINER nimmis <kjell.havneskold@gmail.com>

RUN apt-get update && \
    apt-get install -y qemu-guest-agent

CMD /usr/sbin/qemu-ga -m virtio-serial -p /dev/virtio-ports/org.qemu.guest_agent.0
