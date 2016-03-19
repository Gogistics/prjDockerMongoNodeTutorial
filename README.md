#Tutorial of development of cloud applications with Docker, MongoDB, and Nodejs

In this tutorial, the Mongo sharding and applications of Nodejs will be deployed in four instances on Linode and the IPs of four instances are listed below:

1. 45.79.106.150; in this instance, we are going to deploy three docker containers to run config-servers of Mongo and two docker containers to run mongos
2. 45.56.85.129; in this instance, we are going to deploy docker containers to run Mongo Sharding-1
3. 198.74.48.34; in this instance, we are going to deploy docker containers to run Mongo Sharding-2
4. 45.33.61.89; in this instance, we are going to deploy containers to run Nodejs applications