const mysql = require('mysql');
const connection = mysql.createConnection({
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    database: process.env.DB_DATABASE
});


connection.connect((error)=>{
    if(error){
        console.log('Error de conexion DB es : '+error);
        return;
    }
    console.log('¡Conexion exitosa a DB!');
});
module.exports= connection;