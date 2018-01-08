FROM ubuntu

RUN apt-get update
RUN apt-get install -y default-jdk
RUN apt-get install -y wget
RUN apt-get install -y xauth

RUN wget https://download-cf.jetbrains.com/idea/ideaIU-2017.3.2.tar.gz
RUN tar -xzf ideaIU-2017.3.2.tar.gz
WORKDIR /idea-IU-173.4127.27/bin
ENTRYPOINT "/idea-IU-173.4127.27/bin/idea.sh"
