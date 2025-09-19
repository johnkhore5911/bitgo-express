FROM bitgo/express:latest

ENV NODE_ENV=production
ENV BITGO_ENV=prod  
ENV BITGO_BIND=0.0.0.0
ENV BITGO_DISABLE_SSL=1

# Let BitGo Express use Railway's PORT automatically - no custom ENTRYPOINT
