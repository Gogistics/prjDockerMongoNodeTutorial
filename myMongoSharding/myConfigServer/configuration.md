###Configuration of Config. Server

$ cd myConfigServer/

$ docker build -t my_configsvr .

$ docker run --name mongo_configsvr_0 -p 27030:27019 -d my_configsvr

$ docker run --name mongo_configsvr_1 -p 27031:27019 -d my_configsvr

$ docker run --name mongo_configsvr_2 -p 27032:27019 -d my_configsvr
