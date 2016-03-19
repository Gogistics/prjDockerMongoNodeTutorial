# config. shell
# create authentication script
echo "rs.initiate()" >> authentication.js
echo "rs.status()" >> authentication.js
echo "sleep(3000)" >> authentication.js
echo "use admin" >> authentication.js
echo "db.createUser({user:'siteUserAdmin',pwd:'EFmkEWRiowueFRWGE5625dew7Ufer567I7',roles:[{role:'userAdminAnyDatabase',db:'admin'}]})" >> authentication.js
echo "db.auth('siteUserAdmin', 'EFmkEWRiowueFRWGE5625dew7Ufer567I7')" >> authentication.js
echo "db.createUser({user:'siteRootAdmin',pwd:'EFmkEWRiowueFRWGE5625dew7Ufer567I7',roles:[{role:'root',db:'admin'}]})" >> authentication.js
echo "db.auth('siteRootAdmin', 'EFmkEWRiowueFRWGE5625dew7Ufer567I7')" >> authentication.js
echo "use test" >> authentication.js
echo "db.createUser({user:'test_user',pwd:'qwkpo234QMZNCPO095vivoGE5625deQQ',roles:[{role:'readWrite',db:'test'}]})" >> authentication.js
echo "db.auth('test_user', 'qwkpo234QMZNCPO095vivoGE5625deQQ')" >> authentication.js
echo "use admin" >> authentication.js
echo "db.auth('siteRootAdmin', 'EFmkEWRiowueFRWGE5625dew7Ufer567I7')" >> authentication.js
echo "rs.status()" >> authentication.js
echo "rs.conf()" >> authentication.js
echo "sleep(1000)" >> authentication.js
echo "rs.add('45.33.61.89:27031')" >> authentication.js
echo "sleep(1000)" >> authentication.js
echo "rs.addArb('45.33.61.89:27032')" >> authentication.js
echo "sleep(1000)" >> authentication.js
echo "rs.status()" >> authentication.js
echo "cfg = rs.conf()" >> authentication.js
echo "cfg.members[0].host = '45.33.61.89:27030'" >> authentication.js
echo "rs.reconfig(cfg)" >> authentication.js
echo "sleep(2000)" >> authentication.js
echo "rs.conf()" >> authentication.js

# run script
mongo < authentication.js

# restart supervisord
/etc/init.d/supervisor restart