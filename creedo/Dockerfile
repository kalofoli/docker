FROM kalofoli/creedo-deps
LABEL description="RealKD/Creedo"

RUN apt install unzip
ADD https://bitbucket.org/realKD/creedo/downloads/Creedo-0.6.0.zip /tmp/Creedo.zip
ADD https://bitbucket.org/realKD/realkd/downloads/realkd-0.7.0-release.zip /tmp/RealKD.zip

WORKDIR /home/creedo
RUN unzip /tmp/Creedo.zip
RUN unzip /tmp/RealKD.zip


# RUN apt update && apt install -y bash-completion openjdk-11-jre mariadb-server aptitude && apt clean

CMD ["bash"]
