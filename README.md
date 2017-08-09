# standalone rails database migrations by docker

## usage

    $ tree -L 1
    .
    ├── Dockerfile
    ├── README.md
    ├── app/
    ├── bin/
    ├── docker-compose.yml
    └── migrations/

    # don't touch anything under `app/` directory
    # cd `migrations` and copy `user` to `yourapp`, change database name in `config.yml`

    docker-compose build
    APP_NAME=yourapp ./bin/sh

## references

https://github.com/thuss/standalone-migrations
