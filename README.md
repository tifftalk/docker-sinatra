# Build instructions
Follow these instructions only if you want to build your own modified version of this image.

* Modify `Dockerfile` to change the author and anything else you desire.
* `cd` to a directory containing the Dockerfile and startup.sh
* `docker build --tag YOUR_DOCKER_HUB_NAME/YOUR_IMAGE_NAME .` (notice the dot)

# Usage

* `docker run --name sin -p 4444:80 -v $PWD:/usr/src/app -e MAIN_APP_FILE=web.rb -d YOUR_DOCKER_HUB_NAME/YOUR_IMAGE_NAME`
* Browse to `http://localhost:4444/hi`
* Attach to the container with `docker exec -it sin /bin/bash`
* Stop and remove the container with `docker rm -f sin` 