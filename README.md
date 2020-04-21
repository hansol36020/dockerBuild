# Building & Running

Copy the sources to your docker host and build the container, and to run.
```
	docker build --rm -t nowage/nginx .
  mkdir ~/df
	docker run -it --name n1 -v ~/df:/var/www/html -p 80:80 nowage/nginx


```
Get the port that the container is listening on:

```
# docker ps
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES
ad2ad96e4b2f        nowage/nginx      "/bin/bash"         7 seconds ago       Up 6 seconds                            c1
```

To test, ("nowage" is username. )
```
	echo "<h1>hi</h1>" > ~/df/index.html
  open 127.0.0.1
```
To Rollback
```
    docker rm n1 -f
    docker rmi nowage/nginx
```
