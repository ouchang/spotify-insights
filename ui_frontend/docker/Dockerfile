FROM node:21-alpine
RUN mkdir -p /spotify-insights/ui_frontend
WORKDIR /spotify-insights/ui_frontend
COPY package.json package.json
RUN npm install
COPY src src
COPY public public
CMD [ "npm", "start"]
