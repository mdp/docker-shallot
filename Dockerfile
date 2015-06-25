FROM debian:jessie
MAINTAINER Mark Percival <m@mdp.im>

RUN apt-get update && apt-get install -y git build-essential make gcc libssl-dev
RUN mkdir -p ~/src && cd ~/src && git clone https://github.com/katmagic/Shallot.git
RUN cd ~/src/Shallot && ./configure && make

WORKDIR /root/src/Shallot
CMD ["./shallot", "^yay"]
