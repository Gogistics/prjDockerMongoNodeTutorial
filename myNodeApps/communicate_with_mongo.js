/*communication with MongoDB*/
/* mongodb */
var MongoClient = require('mongodb').MongoClient,
    assert = require('assert'),
    tweets_collection;
 
// Connection URL 
var url = 'mongodb://test_user:qwkpo234QMZNCPO095vivoGE5625deQQ@45.56.85.129:27032/test';
// Use connect method to connect to the Server 
MongoClient.connect(url, function(err, db) {
  assert.equal(null, err);
  console.log("Successfully connected to the mongo sharding");
  tweets_collection = db.collection('tweets');
  // db.close();
});
/* end of mongodb */