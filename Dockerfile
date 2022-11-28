#FROM gcr.io/distroless/static-debian11
FROM scratch 
COPY webserver /
ENTRYPOINT  ["/webserver"]

