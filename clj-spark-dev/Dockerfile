FROM chalimartines/cdh5-pseudo-distributed:latest
MAINTAINER David Humphreys <davidjameshumphreys@gmail.com>

# Using the latest base image and adding in the
# User is clj-spark

# Leinengen Script
COPY conf/lein.sh /usr/bin/lein
RUN chmod a+x /usr/bin/lein

RUN export TERM=xterm

# Totally insecure!
RUN adduser --disabled-password --gecos '' clj-spark
RUN adduser clj-spark sudo
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

COPY conf/run-lein.sh /home/clj-spark/run-lein.sh
RUN chmod a+x /home/clj-spark/run-lein.sh
