# BitGo Express Production Deployment

This is a production deployment of BitGo Express on Railway.

## Environment Variables Required

- `BITGO_ACCESS_TOKEN`: Your BitGo API access token
- `PORT`: Automatically set by Railway

## API Endpoint

After deployment, your API will be available at:
`https://your-app-name.railway.app/api/v2/{coin}/wallet/{walletId}/sendcoins`

## Health Check

Check if service is running:
`GET https://your-app-name.railway.app/api/v2/ping`
