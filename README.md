build image
-------
docker build -t namespace/imagename DockerfilePath

run container
------
docker run -it --name prefix_name_n [-v ] [-p ] [-e ] -d namespace/imagename bash
