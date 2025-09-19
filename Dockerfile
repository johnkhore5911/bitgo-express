FROM bitgo/express:latest

ENV NODE_ENV=production
ENV BITGO_ENV=prod  
ENV BITGO_BIND=0.0.0.0
ENV BITGO_DISABLE_SSL=1

# Use ENTRYPOINT to override and pass dynamic port
ENTRYPOINT ["/bin/sh", "-c", "bitgo-express --port ${PORT:-3080} --bind 0.0.0.0 --env prod --disablessl"]
