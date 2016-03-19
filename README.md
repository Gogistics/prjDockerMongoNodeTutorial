#Tutorial of development with Docker, MongoDB, and Nodejs

In this tutorial, the Mongo sharding and applications of Nodejs will be deployed in four instances on Linode and the IPs of four instances are listed below:

1. 45.79.106.150; in this instance, we are going to deploy one container to run consul, one container to run docker swarm manager, and three docker containers to run config-servers of Mongo
2. 45.56.85.129; in this instance, we are going to deploy one container to run backup docker swarm manager, containers to run Nodejs applications, and two docker containers to run mongos
3. 198.74.48.34; in this instance, we are going to deploy docker containers to run Mongo Sharding-1
4. 45.33.61.89; in this instance, we are going to deploy docker containers to run Mongo Sharding-2

Development Steps:

1. deploy Mongo Sharding
2. deploy Nodejs applications

NOTE: If you deploy wrong containers, remember to remove unused volumes by the command below after containers are removed

**docker run -v /var/run/docker.sock:/var/run/docker.sock -v /var/lib/docker:/var/lib/docker --rm martin/docker-cleanup-volumes**