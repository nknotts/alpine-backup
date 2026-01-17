FROM alpine:latest

RUN apk --no-cache add sqlite bash rclone

# start crond with log level 8 in foreground, output to stderr
CMD ["crond", "-f", "-d", "8"]
