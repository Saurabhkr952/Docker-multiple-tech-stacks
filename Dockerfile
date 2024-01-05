FROM alpine:3

ARG AWS_ACCESS_KEY_ID
ARG AWS_SECRET_ACCESS_KEY
ARG AWS_SESSION_TOKEN

ENV AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID
ENV AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY
ENV AWS_SESSION_TOKEN=$AWS_SESSION_TOKEN

RUN apk --update --no-cache add \
    openssh \
    git \
    bash \
    expat \
    python3 \
    py3-pip

RUN pip install git-remote-codecommit==1.16  

WORKDIR /migrate

COPY . .
RUN chmod +x pipe.sh
RUN ./pipe.sh
