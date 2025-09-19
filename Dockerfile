# Use the official BitGo Express image
FROM bitgo/express:latest

# Set working directory
WORKDIR /app

# Expose the port (Railway will handle port binding)
EXPOSE $PORT

# Environment variables for production
ENV NODE_ENV=production
ENV BITGO_ENV=prod

# Start BitGo Express with production settings
CMD ["sh", "-c", "bitgo-express --port $PORT --bind 0.0.0.0 --env prod"]
