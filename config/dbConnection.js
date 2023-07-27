var mysql = require('mysql');

var connMySQL = function(){
    return connection = mysql.createConnection({
        host: 'localhost',
        port: '3306',
        user: 'root',
        password: 'Sitex@123',
        database: 'portal_noticias'
    });
}

module.exports = function() {
    return connMySQL;
}
