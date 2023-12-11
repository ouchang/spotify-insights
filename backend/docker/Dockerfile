FROM node:21-alpine
RUN mkdir -p /spotify-insights/backend
WORKDIR /spotify-insights/backend
COPY app.js app.js
COPY config.env config.env
COPY passport.js passport.js
COPY server.js server.js
COPY package.json package.json
RUN npm install
COPY controllers controllers
COPY routers routers
CMD [ "npm", "start"]
