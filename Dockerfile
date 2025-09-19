FROM bitgo/express:latest

# Production environment settings
ENV NODE_ENV=production
ENV BITGO_ENV=prod
ENV BITGO_BIND=0.0.0.0
ENV BITGO_DISABLE_SSL=1

# Don't set BITGO_PORT here - let Railway handle it at runtime
