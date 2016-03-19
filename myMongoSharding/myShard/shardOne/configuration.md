### Configuration Steps

**1. Create folders**

$ mkdir -p myReplicaSet/data/backup

**2. Create keyfile to enable Internal Authentication of MongoDB**

$ cd myReplicaSet

$ openssl rand -base64 741 > /srv/mongodb/mongodb-keyfile

$ nano Dockerfile

NOTE: You can create your own Dockerfile or clone this repo. and use the existing Dockerfile to create a replica set

**3. Create Images**

$ cd /PATH-TO-rs_primary

$ docker build -t alantai/my_shard_one_primary .

$ cd /PATH-TO-rs_secondary

$ docker build -t alantai/my_shard_one_secondary .

$ cd /PATH-TO-rs_arb

$ docker build -t alantai/my_shard_one_arb .

**4. Run Containers

$ docker run --name replica_set_1_arb -p 27043:27017 -d alantai/my_shard_one_arb

$ docker run --name replica_set_1_secondary -p 27042:27017 -d alantai/my_shard_one_secondary

$ docker run --name replica_set_1_primary -p 27041:27017 -d alantai/my_shard_one_primary

**5. Add secondary and arbiter containers to primary container, and start backup mechanism

$ docker exec replica_set_1_primary bash ./config.sh

$ docker exec -d replica_set_1_primary bash ./backup.sh

$ docker exec -d replica_set_1_secondary bash ./backup.sh
