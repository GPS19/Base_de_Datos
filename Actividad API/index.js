var express = require("express"); 
var app = express(); 
var mysql = require('mysql');
var bodyParser = require("body-parser"); 

app.set("view engine", "ejs"); 
app.use(bodyParser.urlencoded({extended: true})); 
app.use(express.static(__dirname + "/public")); 
 

var connection = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "Starwars19yolo", 
    database: "usuarios_api"
});

function actualizarUsuarios(res){
    var q = "SELECT COUNT(*) AS count FROM usuarios"
    connection.query(q, function(err, results){
        if(err) throw err; 
        var count = results[0].count;
        console.log("There are " + count + " users in our DataBase");
        res.render("home", {data: count});
})}; 

// AGREGAR USUARIOS

app.post("/agregar", function(req, res){
    var nombre = req.body.nombre; 
    var apellido = req.body.apellido;  
    var email = req.body.email; 
    console.log(nombre, apellido, email);
    var person = {nombre, apellido, email}; 
    var q = "INSERT INTO usuarios SET ?"; 
    connection.query(q, [person], function(err, results){
        if(err) throw err; 
        actualizarUsuarios(res);  
    }); 
})



// VER USUARIOS

app.get('/', function(req, res){
    actualizarUsuarios(res);   
})



app.listen(8080, function(){
    console.log("Serever running on port 8080")
}); 