FROM node:alpine
RUN apk add --no-cache tini git \
  && yarn global add git-http-server \
  && adduser -D -g git git

USER git
WORKDIR /home/git

# Set Git user identity
RUN git config --global user.name "leong-jia-qi-nicole" \
  && git config --global user.email "2203400@sit.singaporetech.edu.sg"

RUN git init --bare repository.git

ENTRYPOINT ["tini", "--", "git-http-server", "-p", "3000", "/home/git"]
