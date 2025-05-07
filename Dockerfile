FROM alpine:latest

WORKDIR /app

COPY ./publish .

RUN apk add --no-cache \
    libc6-compat \
    libstdc++ \
    libgcc \
    icu-libs

CMD ["./myApp"]