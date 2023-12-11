#FROM amd64/alpine:3.16
FROM ubuntu

ARG VERSION

ENV VERSION="$VERSION"
RUN mkdir -p /spotify-insights/datacollector
WORKDIR /spotify-insights/datacollector
COPY _build/datacollector-${VERSION} datacollector-${VERSION}
