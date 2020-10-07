FROM ubuntu:18.04

RUN apt-get update
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get install -y avahi-daemon curl git cmake g++ make build-essential autoconf automake
# The need of the following Package is not documented
RUN apt-get install -y pkg-config
RUN apt-get install -y sqlite3 libsqlite3-dev
RUN apt-get install -y libtool libboost-dev libboost-system-dev libboost-thread-dev libssl-dev libpq-dev uuid-dev
RUN apt-get install -y python3-dev python3-pip python3-dbus python3-setuptools
RUN apt-get install -y postgresql

RUN git clone https://github.com/fledge-iot/fledge.git /fledge

WORKDIR /fledge
# check requirements
RUN ./requirements.sh
RUN make
RUN make install

RUN apt-get install -y rsyslog

WORKDIR /usr/local/fledge
ADD fledge.sh fledge.sh

EXPOSE 8081

CMD ["./fledge.sh"]
