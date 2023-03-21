FROM golang:latest as builder
WORKDIR /app/
COPY . .
RUN go build -o hello .

FROM scratch
COPY --from=builder /app/hello ./
CMD ["./hello"]