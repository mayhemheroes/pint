FROM golang:1.19.1-buster as go-target
ADD . /pint
WORKDIR /pint/cmd/pint
RUN go build

FROM golang:1.19.1-buster
COPY --from=go-target /pint/cmd/pint/pint /
COPY --from=go-target /pint/*.yml /testsuite/

ENTRYPOINT []
CMD ["/pint", "lint", "@@"]
