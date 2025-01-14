# A Java Minecraft Server using Docker

You can build your server image using the dockerfile and server jar provided.

Do make sure to setup a docker volume and network to make sure the server works properly

The volume should mount to `/mcserver`, and the network will use port 25565 which is the default for minecraft java servers.

An example command to run a container using this image is `docker run -v mc-volume:/mcserver -it --network mc-server-network -p 25565:25565 -e EULA=TRUE my-mc-server`  
