FROM kalofoli/buster
LABEL description="Base dependencies for RealKD/Creedo"

RUN useradd creedo && mkdir ~creedo && chown creedo:creedo ~creedo && echo creedo:creedo | /usr/sbin/chpasswd && chsh creedo -s /bin/bash

RUN apt update && apt install -y bash-completion openjdk-11-jre mariadb-server aptitude curl unzip sudo && apt clean

CMD ["bash"]
