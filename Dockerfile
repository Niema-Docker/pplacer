# Minimal Docker image for pplacer using Alpine base
FROM alpine:latest

# install pplacer
RUN apk update && \
    apk add --no-cache bash unzip && \
    wget "https://github.com/matsen/pplacer/releases/download/v1.1.alpha23/pplacer-linux-x86_64.zip" && \
    unzip pplacer-*.zip && \
    for f in *.exe ; do mv "$f" /usr/local/bin/"${f%.*}" ; done && \
    rm -rf pplacer-*.zip scripts
