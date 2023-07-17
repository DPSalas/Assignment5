# Builder stage# Builder stage
FROM alpine AS builder
WORKDIR /app
COPY data.txt .

# Final stage
FROM fedora AS final
WORKDIR /app
COPY --from=builder /app/data.txt .

