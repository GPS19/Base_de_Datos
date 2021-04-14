// INSERTAR USUARIOS

var mysql = require('mysql');    // Storing the package mysql into a variable
var faker = require('faker'); // Storing faker package 

var connection = mysql.createConnection({ // Creating the connection
  host: "localhost",
  user: "root",
  password: "Starwars19yolo", 
  database: "actividad_api"
});

connection.connect(function(err) { // Verifying we are connected
    if (err) throw err;
    console.log("Connected!");
  });


var data = []
for(let i = 0; i < 5; i++){
    data.push([faker.name.firstName(), faker.name.lastName(), faker.internet.email()]); // Inserting data with the faker package
}

var q = "INSERT INTO usuarios (nombre, apellido, email) VALUES ?";  // Query to insert into the table users
connection.query(q, [data], function(err, result){
    if(err) throw err; 
    console.log(result);
}); 