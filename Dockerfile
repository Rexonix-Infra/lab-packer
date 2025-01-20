ARG PACKER_VERSION=light-1.10.1
FROM hashicorp/packer:$PACKER_VERSION

RUN apk update
RUN apk add ansible=8.6.1-r0 py-pip=23.3.1-r0 openssh=9.6_p1-r1 sshpass=1.10-r0
RUN pip install pywinrm==0.4.3 --break-system-packages

LABEL org.opencontainers.image.source=https://github.com/rexonix-infra/lab-packer

ENTRYPOINT ["/bin/packer"]
