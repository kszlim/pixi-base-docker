# Use the official Ubuntu 22.04 as a base image
FROM ubuntu:22.04

# Set metadata (optional)
LABEL maintainer="Kevin Lim <kszlim@gmail.com>"

# Run commands to update the base system and install necessary packages
RUN apt-get update && apt-get install -y curl git

RUN useradd -ms /bin/bash user
USER user

RUN curl -fsSL https://pixi.sh/install.sh | bash
ENV PATH="${PATH}::/home/user/.pixi/bin"
