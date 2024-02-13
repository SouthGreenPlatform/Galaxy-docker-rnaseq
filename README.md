# Galaxy-docker-rnaseq

## About

Dockerize a Galaxy container for RNA-Seq analysis (in the context of a deployment for the Universidad Nacional de Colombia)

This was helped by this [Tutorial](https://depot.galaxyproject.org/hub/attachments/events/2021-05-gr4-tool-devs/gr4-tool-devs-docker.pdf)

## Deploy the Galaxy docker

1- Clone this repository

```
git clone https://github.com/SouthGreenPlatform/Galaxy-docker-rnaseq.git
```

2- Build the docker image from the Dockerfile

```
docker build -t galaxy_unal:latest .
```

3- Run the container

```
docker run -p 9090:80 galaxy_unal
```

The Galaxy instance is then accessible to this URL: http://localhost:9090

4- Stop the container

```
docker stop
```


## Authors

* Alexis Dereeper (IRD)
