
FROM openjdk:11-stretch

RUN apt-get update && \
  apt-get -y install acl dirmngr gpg lsof procps wget && \
  rm -rf /var/lib/apt/lists/*

#ENV SOLR_USER="solr" \
#    SOLR_UID="8983" \
#    SOLR_GROUP="solr" \
#    SOLR_GID="8983" \
#    SOLR_VERSION="8.2.0-SNAPSHOT" \
##    SOLR_URL="${SOLR_DOWNLOAD_SERVER:-https://archive.apache.org/dist/lucene/solr}/8.1.1/solr-8.1.1.tgz" \
#    SOLR_URL="${SOLR_DOWNLOAD_SERVER:-http://searchstack.org/solr-8.2.0-SNAPSHOT.tgz" \
#    SOLR_SHA256="b515598c11f53fe28d682e3d71238642e9f34509194e3c4746e39bb7d7bb46a1" \
#    SOLR_KEYS="F23F054D9EC50F2397FF2B814E67A2711D053DDB" \
#    PATH="/opt/solr/bin:/opt/docker-solr/scripts:$PATH" \
#    SOLR_INCLUDE=/etc/default/solr.in.sh \
#    SOLR_HOME=/var/solr/data \
#    SOLR_PID_DIR=/var/solr \
#    SOLR_LOGS_DIR=/var/solr/logs \
#    LOG4J_PROPS=/var/solr/log4j2.xml

#RUN groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP" && \
#  useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER"


#RUN set -e; \
#  echo "downloading $SOLR_URL" && \
#  wget -nv "$SOLR_URL" -O "/opt/solr-$SOLR_VERSION.tgz" && \
#  tar -C /opt --extract --file "/opt/solr-$SOLR_VERSION.tgz" && \
#  (cd /opt && ln -s "solr-$SOLR_VERSION" solr) && \
#  rm "/opt/solr-$SOLR_VERSION.tgz"* && \
#  rm -Rf /opt/solr/docs/ && \
#  mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d /opt/docker-solr && \
#  chown -R 0:0 "/opt/solr-$SOLR_VERSION" && \
#  find "/opt/solr-$SOLR_VERSION" -type d -print0 | xargs -0 chmod 0755 && \
#  find "/opt/solr-$SOLR_VERSION" -type f -print0 | xargs -0 chmod 0644 && \
#  chmod -R 0755 "/opt/solr-$SOLR_VERSION/bin" && \
#  cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh && \
#  mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig && \
#  mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig && \
#  chown root:0 /etc/default/solr.in.sh && \
#  chmod 0664 /etc/default/solr.in.sh && \
#  mkdir -p /var/solr/data /var/solr/logs && \
#  (cd /opt/solr/server/solr && cp solr.xml zoo.cfg /var/solr/data/) && \
#  cp /opt/solr/server/resources/log4j2.xml /var/solr/log4j2.xml && \
#  find /var/solr -type d -print0 | xargs -0 chmod 0770 && \
#  find /var/solr -type f -print0 | xargs -0 chmod 0660 && \
#  sed -i -e "s/\"\$(whoami)\" == \"root\"/\$(id -u) == 0/" /opt/solr/bin/solr && \
#  sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr && \
#  chown -R "0:0" /opt/solr-$SOLR_VERSION /docker-entrypoint-initdb.d /opt/docker-solr && \
#  chown -R "$SOLR_USER:0" /var/solr

#COPY scripts /opt/docker-solr/scripts
#RUN chown -R 0:0 /opt/docker-solr/scripts

COPY smart.tgz /opt/solr-9.0.0-SNAPSHOT.tgz

RUN tar -xvf /opt/solr-9.0.0-SNAPSHOT.tgz && mv solr-9.0.0-SNAPSHOT /opt/solr && ls /opt/solr

VOLUME /var/solr
EXPOSE 8983
WORKDIR /opt/solr
