FROM postgres

RUN apt-get update && apt-get install -y wget && apt-get clean

RUN wget https://raw.githubusercontent.com/EXCCoin/miningcore/master/src/MiningCore/Persistence/Postgres/Scripts/createdb.sql -O /docker-entrypoint-initdb.d/createdb.sql
