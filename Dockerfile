FROM debian:bullseye-slim

ENV TINI_VERSION=v0.19.0
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /bin/tini
RUN chmod +x /bin/tini

ARG BEDROCK_VERSION
ARG SERVER_ARCHIVE=bedrock-server-${BEDROCK_VERSION}.zip
COPY ${SERVER_ARCHIVE} /tmp/server.zip


WORKDIR /opt/minecraft
RUN apt-get update && apt-get install -y --no-install-recommends \
    ca-certificates curl unzip && \
    unzip /tmp/server.zip && \
    rm -rf /tmp/server.zip /var/lib/apt/lists/*

ENTRYPOINT ["/bin/tini", "--"]
CMD ["/opt/minecraft/bedrock_server"]
