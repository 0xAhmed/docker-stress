FROM ubuntu:trusty
MAINTAINER Jeff Lindsay <progrium@gmail.com>

RUN apt-get update && apt-get install -y stress

ENTRYPOINT /usr/bin/stress --verbose --vm 10 --vm-bytes 1G
CMD []
