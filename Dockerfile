FROM alpine
RUN apk add --update npm
RUN npm install -g http-server
COPY . /src
WORKDIR /src
EXPOSE 0808
ENTRYPOINT {"http-server", "-p", "8080"}

