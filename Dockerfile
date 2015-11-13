FROM debian:jessie

RUN apt-get update
RUN apt-get install -y libwebp5 libfontconfig libjpeg62 libssl1.0.0 libicu52 curl

COPY . decktape
WORKDIR decktape
RUN curl \
    -L https://astefanutti.github.io/decktape/downloads/phantomjs-linux-debian8-x86-64 \
    -o bin/phantomjs
ENTRYPOINT ["/bin/bash"]
