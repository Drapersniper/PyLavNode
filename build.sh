docker buildx build \
--push \
--builder multi-arch \
--platform linux/amd64,linux/arm/v7,linux/arm64/v8 \
--tag drapersniper/node:latest \
.
