FROM kalofoli/creedo-deps
LABEL description="RealKD/Creedo"


COPY ["Creedo-latest.zip","realkd-latest.zip","privileges.sql","/tmp/"]

WORKDIR /home/creedo
RUN unzip /tmp/Creedo-latest.zip && unzip /tmp/realkd-latest.zip && chown creedo:creedo -R .

RUN service mysql start && cat /tmp/privileges.sql | mysql -u root && service mysql stop

COPY creedo.properties creedo.properties
COPY entrypoint.sh /var/lib/
RUN chmod a+x /var/lib/entrypoint.sh

ENTRYPOINT /var/lib/entrypoint.sh
CMD ["shell"]
