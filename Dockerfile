FROM mhart/alpine-node:6.11.4

# Install required dependencies (Alpine Linux packages)
RUN apk update && \
  apk add --no-cache \
    bash \
    g++ \
    gcc \
    git \
    libev-dev \
    libevent-dev \
    libuv-dev \
    make \
    openssl-dev \
    perl \
    python

# Switch to directory for external dependencies (installed from source)
WORKDIR /external

# Install (global) NPM packages/dependencies
RUN npm install -g node-gyp
