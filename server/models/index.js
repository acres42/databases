var db = require('../db');

module.exports = {
  messages: {
    get: function(callback) {
      var querystring = 'SELECT messages.messages_id, messages.message FROM messages INNER JOIN users ON (messages.user_id_users = user.user_id)';
      db.connection.query(querystring, function(err, results) {
        callback(err, results);
      });
    },

    post: function(params, callbacks) {
     var querystring = 'INSERT INTO messages(message,user_id_users) VALUES (?, ?)';
     db.connection.query(querystring, params, function(err, results){
        callback(results);
     });
    } // a function which can be used to insert a message into the database
  },

  users: {
 //    // Ditto as above.
    get: function(callback) {
      var querystring = 'SELECT * FROM users';
      db.connection.query(querystring, function(err, results) {
        callback(results);
      });
    },
    post: function(params, callback) {
      var querystring = 'INSERT INTO users(username) values ?';
      db.connection.query(querystring, params, function(err, results) {
        callback(results);
      });
    }
  },
};
