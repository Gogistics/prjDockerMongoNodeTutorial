# my twitter stream server
FROM    mongo

# File Author / Maintainer
MAINTAINER Alan Tai <gogistics@gogistics-tw.com>

#
RUN    apt-get update
RUN    DEBIAN_FRONTEND=noninteractive apt-get install -yq apt-utils
RUN    apt-get update
RUN    apt-get clean

# set env
ENV    backup_user=test_user user_pwd=qwkpo234QMZNCPO095vivoGE5625deQQ

# set volume
VOLUME   /data/configdb

# add files to working dir
COPY   ./mongodb-keyfile /opt/keyfile/mongodb-keyfile

# Install app dependencies
RUN    cd /opt/keyfile && chmod 600 mongodb-keyfile && chown 999 mongodb-keyfile

# expose ports
EXPOSE  27019

# entry command
CMD mongod --keyFile /opt/keyfile/mongodb-keyfile --configsvr