FROM ubuntu:latest
MAINTAINER Ron Messana ron.messana@gmail.com

RUN \
    apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y stress && \
    rm -rf /var/lib/apt/lists/*


# Set environment variables.
ENV HOME /root
ENV CPU 15
ENV IO 15
ENV VM 15
ENV TIME 9000s


# Define working directory.
WORKDIR /root

# Define default command.
CMD ["/bin/bash", "-c","stress -c ${CPU} -i ${IO} -m ${VM} -v -t ${TIME}"]