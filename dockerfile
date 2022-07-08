ARG PROTOC_VERSION=latest
ARG BUF_VERSION=latest

FROM bufbuild/buf:$BUF_VERSION AS buf-build

FROM namely/protoc-all:$PROTOC_VERSION

COPY --from=buf-build /usr/local/bin/buf /usr/local/bin/buf

ENTRYPOINT ["/usr/local/bin/buf"]
