FROM ghcr.io/parkervcp/yolks:debian

WORKDIR /opt/minecraft
ARG BEDROCK_VERSION
ARG SERVER_ARCHIVE=bedrock-server-${BEDROCK_VERSION}.zip
COPY ${SERVER_ARCHIVE} server.zip

RUN unzip server.zip && rm server.zip
