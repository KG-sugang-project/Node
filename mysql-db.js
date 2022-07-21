const mysql = require('mysql');
//const db_config  = require('./config/db-config.json');
// const connection = mysql.createConnection({
//   host     : db_config.host,
//   user     : db_config.user,
//   password : db_config.password,
//   database : db_config.database
// });

const connection = mysql.createConnection({
     host     : "3.39.223.101",
     user     : "a",
     password : "It12345!",
     database : "sugang"
});

module.exports = connection;