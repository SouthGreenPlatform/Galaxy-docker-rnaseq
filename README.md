# Galaxy-docker-rnaseq

## About

Dockerize a Galaxy container for RNA-Seq analysis (in the context of a deployment for the Universidad Nacional de Colombia).

The Galaxy contains tools for metagenomics + tools for RNASeq (HiSat2, RNA STAR, featurecounts, DESeq2, heatmap2...)

This was helped by this [Tutorial](https://depot.galaxyproject.org/hub/attachments/events/2021-05-gr4-tool-devs/gr4-tool-devs-docker.pdf)

## Run the Galaxy docker container

```
sudo docker run -p 8080:80 dereeper/galaxy_unal:latest
```

## Test it locally and modify the container with additional flavors

1- Clone this repository

```
git clone https://github.com/SouthGreenPlatform/Galaxy-docker-rnaseq.git
cd Galaxy-docker-rnaseq
```

2- Modify the list of tools and adapt to your need

Edit the  tools_rnaseq.yml file and the homepage welcome.html.

3- Build the docker image from the Dockerfile

```
sudo docker build --no-cache -t galaxy_unal:latest .
```

4- Run the container

```
sudo docker run -p 8080:80 galaxy_unal
```

The Galaxy instance is then accessible to this URL: http://localhost:8080


5- Once you are satisfied, stop the local container and publish it into Docker Hub

```
sudo docker ps -a
sudo docker stop <container_id>
```

Create a new repository in Docker Hub with a new name <repository_name>.

Build the image and push it into Docker Hub

```
sudo docker build -t <login>/<repository_name>:latest .
sudo docker push <login>/<repository_name>:latest
```

6- Test the published Docker image

```
sudo docker run -p 8080:80 <login>/<repository_name>:latest
```

## Authors

* Alexis Dereeper (IRD)
