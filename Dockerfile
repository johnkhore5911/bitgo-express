FROM bitgo/express:latest

# Production environment settings
ENV NODE_ENV=production
ENV BITGO_ENV=prod
ENV BITGO_BIND=0.0.0.0
ENV BITGO_DISABLE_SSL=1

# This is the key fix - use Railway's PORT at runtime
CMD ["sh", "-c", "bitgo-express --port $PORT --bind 0.0.0.0 --env prod --disablessl"]
