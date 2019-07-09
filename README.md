# dockerfiles-ubuntu-user-adderable
Ubuntu, It support base user creation and password setting.

# Building & Running

Copy the sources to your docker host and build the container, and to run.
```
	docker build --rm -t oxygen99999/ubuntu .
	docker run -it --name u1 -e USER=oxygen99999 -e PASSWD=oxygen99999 oxygen99999/ubuntu
```
Get the port that the container is listening on:

```
# docker ps
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES
ad2ad96e4b2f        oxygen99999/ubuntu      "/bin/bash"         7 seconds ago       Up 6 seconds                            u1
```

To test, ("oxygen99999" is username. )
```
	su - oxygen99999
```
To Rollback
```
    docker rm u1 -f
    docker rmi oxygen99999/ubuntu
```
