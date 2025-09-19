# FROM bitgo/express:latest

# ENV NODE_ENV=production
# ENV BITGO_ENV=test  
# ENV BITGO_BIND=0.0.0.0
# ENV BITGO_DISABLE_SSL=1

# # Override default entrypoint to use Railway's PORT dynamically
# ENTRYPOINT ["/bin/sh", "-c", "exec /var/bitgo-express/bin/bitgo-express --port \"${PORT:-8080}\" --bind 0.0.0.0 --env prod --disablessl"]

FROM bitgo/express:latest

ENV NODE_ENV=production
ENV BITGO_ENV=test  
ENV BITGO_BIND=0.0.0.0
ENV BITGO_DISABLE_SSL=1

# Change '--env prod' to '--env test'
ENTRYPOINT ["/bin/sh", "-c", "exec /var/bitgo-express/bin/bitgo-express --port \"${PORT:-8080}\" --bind 0.0.0.0 --env test --disablessl"]
