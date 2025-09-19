FROM bitgo/express:latest

ENV NODE_ENV=production
ENV BITGO_ENV=prod  
ENV BITGO_BIND=0.0.0.0
ENV BITGO_DISABLE_SSL=1

# Use the FULL PATH to the bitgo-express binary
ENTRYPOINT ["/bin/sh", "-c", "/var/bitgo-express/bin/bitgo-express --port ${PORT:-3080} --bind 0.0.0.0 --env prod --disablessl"]
