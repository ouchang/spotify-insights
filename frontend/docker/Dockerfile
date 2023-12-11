FROM node:21-alpine
RUN mkdir -p /spotify-insights/frontend
WORKDIR /spotify-insights/frontend
COPY package.json package.json
RUN npm install
COPY src src
COPY public public
CMD [ "npm", "start"]
