##############
# Build Stage
##############
FROM alpine:3.11 as builder

RUN apk add --no-cache gcc musl-dev make

COPY src/ /root/chall

WORKDIR /root/chall

RUN mkdir bin && make all

##############
# Run Stage
##############
FROM alpine:3.11 as runner

RUN apk add --no-cache socat

COPY --from=builder /root/chall/bin /root
COPY flag.txt /root

WORKDIR /root

EXPOSE 4000

CMD ["socat", "-v", "-v", "TCP-LISTEN:4000,reuseaddr,fork,su=root", "EXEC:'/root/chall'"]
