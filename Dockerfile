# Dockerfile to run restore-cli in a container
# this is running on my odroid c2 (aarch64/arm64)

# uncomment this for aarch64/arm64
#FROM container4armhf/armhf-alpine:latest

# uncomment this for anything amd64
#FROM alpine

MAINTAINER <lesion@autistici.org>
LABEL name="arm64/remotestorage"
RUN apk add nodejs ca-certificates && npm -g install restore-cli
ENV NODE_ENV=production
EXPOSE 8000
CMD ["/usr/bin/restore", "-c", "/usr/lib/node_modules/restore-cli/conf.example.json"]
