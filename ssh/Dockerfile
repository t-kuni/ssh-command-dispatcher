FROM alpine:3.10
RUN apk add --no-cache openssh
WORKDIR /root
COPY ./entrypoint.sh /root/entrypoint.sh
RUN chmod +x /root/entrypoint.sh

ENTRYPOINT ["/root/entrypoint.sh"]
CMD ["echo", "connected successfully!"]
