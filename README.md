# Docker Minecraft Bedrock Server image

## Build

docker build --build-arg BEDROCK_VERSION=$(cat ./version.txt) -t minecraft-bedrock-server .