# Intellij-on-Docker

How to setup and run Intellij on Docker container with GUI using X11 port fowarding and Ubuntu as host machine(required).

## Requirements:

> Ubuntu OS machine (host)

> Docker

> xauth

run the following command to get xauth list
```$ xauth list```
copy the key for later use.

## Build:

Download or copy the Dockerfile from this repo 

Replace the text "[PASTE XAUTH KEY HERE]" (with Quotes) with the xauth key generated from the above step.

Open terminal and run the following docker command
```$ docker build -t intellij [PATH OF DOCKERFILE]```

Build will execute and display the logs

after build is sucessfull, run the image with respective tag name

Use the following command
``` docker run -it --net=host -e DISPLAY -v [PROJECT VOLUME] [TAGNAME]```

## Optional:

Mount any project directory using the docker volume mount arguments
``` -v [Host volume]: [Container] ```

You can also mount sound using
``` --device /dev/snd ```

