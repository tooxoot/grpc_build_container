FROM golang

RUN apt-get update && apt-get install -y unzip

WORKDIR /app
ADD https://github.com/protocolbuffers/protobuf/releases/download/v3.11.4/protoc-3.11.4-linux-x86_64.zip /tmp
RUN unzip /tmp/*.zip -d /tmp
RUN mv /tmp/bin/* /bin && rm -rf /tmp/*

RUN go get -v -u github.com/golang/protobuf/protoc-gen-go


CMD tail -f /dev/null
