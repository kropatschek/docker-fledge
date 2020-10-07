# fledge docker container

This is a fledge docker image based on Ubuntu 18.04. It is installed in its default location `/usr/local/fledge`

## Start a fledge docker container

### Run app

> clone git repo and an run the following commands in the directory

```
    $ docker-compose build
    $ docker-compose up
```

> To run in deamon mode: `docker-compose up -d`

This exposes the fledge API on port 8081 on localhost

### Stopping docker-compose
```
    $ docker-compose down
```

## Adding your own plugins

fledge plugins are found under `/usr/local/fledge/python/fledge/plugins`
