FROM ubuntu
WORKDIR /data

RUN apt update


RUN apt-get update
RUN apt-get install -y openjdk-21-jdk
#    apt-get clean && \
#    rm -rf /var/lib/apt/lists/*
COPY ./neoforge-21.1.153-installer.jar ./neoforge-installer.jar
RUN java -jar ./neoforge-installer.jar

COPY ./eula.txt ./eula.txt
COPY ./mods ./mods
COPY ./user_jvm_args.txt ./user_jvm_args.txt

EXPOSE 25565

CMD ./run.sh
