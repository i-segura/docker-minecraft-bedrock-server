# Docker Minecraft Bedrock Server image

A containerized version of the Minecraft Bedrock Edition server. This is intended to run in [Pterodactyl](https://pterodactyl.io/), but should work in any Unix system.

## Build

docker build --build-arg BEDROCK_VERSION=$(cat ./version.txt) -t minecraft-bedrock-server .