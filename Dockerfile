FROM ubuntu:trusty
MAINTAINER Jeff Lindsay <progrium@gmail.com>

RUN apt-get update && apt-get install -y stress
RUN /usr/bin/stress --verbose --vm 15 --vm-bytes 1G

ENTRYPOINT /usr/bin/stress --verbose 
CMD []
