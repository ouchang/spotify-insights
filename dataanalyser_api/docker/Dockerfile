FROM ubuntu

ARG VERSION

ENV VERSION="$VERSION"
RUN mkdir -p /spotify-insights/dataanalyser_api
WORKDIR /spotify-insights/dataanalyser_api
COPY _build/dataanalyser_api-${VERSION} dataanalyser_api-${VERSION}
RUN ln -s dataanalyser_api-${VERSION} dataanalyser_api
CMD [ "/spotify-insights/dataanalyser_api/dataanalyser_api" ]
