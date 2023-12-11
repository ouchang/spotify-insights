FROM ubuntu

ARG VERSION

ENV VERSION="$VERSION"
RUN mkdir -p /spotify-insights/datacollector
WORKDIR /spotify-insights/datacollector
COPY _build/datacollector-${VERSION} datacollector-${VERSION}
RUN ln -s datacollector-${VERSION} datacollector
CMD [ "/spotify-insights/datacollector/datacollector" ]