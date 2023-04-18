FROM golang:alpine as compilador
COPY hello-fullcycle.go .
RUN go build hello-fullcycle.go

FROM scratch
COPY --from=compilador /go/hello-fullcycle .
CMD ["./hello-fullcycle"]