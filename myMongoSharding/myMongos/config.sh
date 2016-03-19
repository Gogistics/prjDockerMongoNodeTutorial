# mongos configuration
echo "use admin" >> authentication.js
echo "db.createUser({user:'siteUserAdmin',pwd:'EFmkEWRiowueFRWGE5625dew7Ufer567I7',roles:[{role:'userAdminAnyDatabase',db:'admin'}]})" >> authentication.js
echo "db.auth('siteUserAdmin', 'EFmkEWRiowueFRWGE5625dew7Ufer567I7')" >> authentication.js
echo "db.createUser({user:'siteRootAdmin',pwd:'EFmkEWRiowueFRWGE5625dew7Ufer567I7',roles:[{role:'root',db:'admin'}]})" >> authentication.js
echo "db.auth('siteRootAdmin', 'EFmkEWRiowueFRWGE5625dew7Ufer567I7')" >> authentication.js
echo "sleep(1000)" >> authentication.js
echo "sh.addShard('rs1/198.74.48.34:27030,198.74.48.34:27031,198.74.48.34:27032')" >> authentication.js
echo "sleep(2000)" >> authentication.js
echo "sh.addShard('rs2/45.33.61.89:27030,45.33.61.89:27031,45.33.61.89:27032')" >> authentication.js
echo "sleep(2000)" >> authentication.js
echo "db.runCommand({enablesharding: 'test'})" >> authentication.js
echo "sleep(2000)" >> authentication.js
echo "db.runCommand({shardcollection: 'test.test_collection', key: {_id: 1}})" >> authentication.js
echo "sleep(2000)" >> authentication.js
echo "db.stats()" >> authentication.js
echo "db.printShardingStatus()" >> authentication.js
echo "use test" >> authentication.js
echo "sleep(1000)" >> authentication.js
echo "db.stats()" >> authentication.js
echo "db.printShardingStatus()" >> authentication.js

mongo < authentication.js