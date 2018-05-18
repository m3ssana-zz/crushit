FROM ubuntu:latest
MAINTAINER Ron Messana ron.messana@gmail.com

RUN \
    apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y stress && \
    rm -rf /var/lib/apt/lists/*


# Set environment variables.
ENV HOME /root

# Define working directory.
WORKDIR /root

# Define default command.
CMD ["/bin/bash", "-c","stress -c 15 -i 15 -m 15 -v -t 9000s"]
