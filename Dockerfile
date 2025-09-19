FROM bitgo/express:latest

ENV NODE_ENV=production
ENV BITGO_ENV=prod  
ENV BITGO_BIND=0.0.0.0
ENV BITGO_DISABLE_SSL=1

# Override default entrypoint to use Railway's PORT dynamically
ENTRYPOINT ["/bin/sh", "-c", "exec /var/bitgo-express/bin/bitgo-express --port \"${PORT:-8080}\" --bind 0.0.0.0 --env prod --disablessl"]
