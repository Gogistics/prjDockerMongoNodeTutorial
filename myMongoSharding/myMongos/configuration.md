###Configuration of Mongos

cd myMongos/

$ docker build -t my_mongos .

**create mongos**

$ docker run --name mongos_0 -p 27030:27017 -d my_mongos

$ docker run --name mongos_1 -p 27031:27017 -d my_mongos

$ docker run --name mongos_2 -p 27032:27017 -d my_mongos

**configure sharding**

$ docker exec mongos_0 bash ./config.sh
