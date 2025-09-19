FROM bitgo/express:latest

# Production environment settings
ENV NODE_ENV=production
ENV BITGO_ENV=prod
ENV BITGO_BIND=0.0.0.0

# Use Railway's PORT environment variable
ENV BITGO_PORT=$PORT