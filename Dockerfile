FROM ubuntu:12.04

RUN apt-get update
RUN apt-get install -y libmagic-dev gperf libpcre3-dev libpcre++-dev ruby ruby-dev libpcre3 ragel gcc swig
COPY . /ohcount
WORKDIR /ohcount
RUN ./build ohcount
RUN cp /ohcount/bin/ohcount /usr/local/bin

CMD ["ohcount", "/code"]
