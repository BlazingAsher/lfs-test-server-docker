FROM golang:1.14.1-buster

ARG user=lfs-server-runner

RUN apt-get update
RUN apt-get upgrade -y

RUN useradd -m $user
RUN mkdir /lfs
RUN chown $user:$user /lfs

RUN mkdir /home/$user/go

ENV GOPATH /home/$user/go
RUN go get github.com/github/lfs-test-server

WORKDIR /home/$user/go/src/github.com/github/lfs-test-server
RUN go build

WORKDIR /home/$user/
COPY run.sh .
RUN chmod +x run.sh

WORKDIR /
RUN chown -R $user:$user /home/$user/go

ENV SERVER_USER ${user}

CMD su -p $SERVER_USER -c /home/$SERVER_USER/run.sh
