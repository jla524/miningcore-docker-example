# Miningcore for ExchangeCoin docker example

This repository is an example how to start Miningcore for ExchangeCoin using Docker.

## Requirements
- Docker
- OpenSSL
- Docker Compose (optional)

## Usage
1. Generate certificate for exccd `openssl req -x509 -newkey rsa:4096 -keyout conf/exccd.key -out conf/exccd.cert -days 365 -subj '/CN=exccd' -nodes`.
2. If you are not using already created wallet create new one `docker-compose run exccwallet /app/exccwallet -C /app/exccwallet.conf --appdata=/data --create`.
3. Do initial scan of new wallet `docker-compose run exccwallet /app/exccwallet -C /app/exccwallet.conf --appdata=/data`.
4. Set addresses from this wallet in `conf/excc_pool.json`.
5. Run all services `docker-compose up --build`. 
