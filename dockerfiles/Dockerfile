FROM ubuntu:20.10

# Install packages
RUN apt-get update && \
 apt-get install -y --no-install-recommends wireguard-tools iptables nano net-tools procps openresolv \
                                            freeradius freeradius-mysql freeradius-utils mysql-client iproute2 && \
 apt-get clean

# Add main work dir to PATH
WORKDIR /scripts
ENV PATH="/scripts:${PATH}"

# Copy scripts to containers
COPY install-module /scripts
COPY run /scripts
COPY genkeys /scripts
RUN chmod 755 /scripts/*

# Normal behavior is just to run wireguard with existing configs
CMD ["run"]
