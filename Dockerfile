# Test web-app
# Linux x64
FROM alpine

LABEL maintainer="indrajith.ekanayake@codification.io"

# Install Node and NPM
RUN apk add --update nodejs npm curl

# Copy app to /src
COPY . /src

WORKDIR /src

# Install dependencies
RUN  npm install

EXPOSE 8080

ENTRYPOINT ["node", "./app.js"]
