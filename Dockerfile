FROM ubuntu:16.04

ADD http://stedolan.github.io/jq/download/linux64/jq /usr/local/bin/jq

COPY check.sh /opt/resource/check
COPY in.sh    /opt/resource/in
COPY out.sh   /opt/resource/out

RUN chmod +x /usr/local/bin/jq /opt/resource/out /opt/resource/in /opt/resource/check && \
    apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y curl