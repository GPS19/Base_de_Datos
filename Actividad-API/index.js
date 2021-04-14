var express = require("express"); 
var app = express(); 
var mysql = require('mysql');
var bodyParser = require("body-parser"); 
const path = require("path"); 
const cors = require("cors");


app.use(bodyParser.urlencoded({extended: true})); 
app.use(express.json()); 
app.engine("html", require("ejs").renderFile); 
app.use(express.static(__dirname + "/public"));  
app.use(cors()); 

var connection = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "Starwars19yolo", 
    database: "actividad_api", 
    multipleStatements: true, 
});


// OBTENER LA PAGINA PRINCIPAL

app.get("/api/home", (req, res)=>{
    var q = "SELECT COUNT(*) AS count FROM usuarios; " 
    var q2 = "SELECT * FROM usuarios"
    var q3 = q+q2; 
    connection.query(q3, (err, results)=>{
        if(err){
            console.log(err);
            return; 
        } else{
            var count = results[0][0].count; 
            console.log("Count is " + count);
            let lista = []; 
            for(let i = 0; i < results[1].length; i++){
                lista.push({nombre: results[1][i].nombre, apellido: results[1][i].apellido})
            }
            res.render(__dirname + "/home.html", {data:count, lista:lista});  
        }
    }); 
    
})

// METODO PARA CREAR USUARIOS


app.post("/api/home", (req, res)=>{
    // console.log(req.body);
    const nuevoUsuario = {nombre: req.body.nombre, apellido: req.body.apellido, email: req.body.email}; 
    var q = "INSERT INTO usuarios SET ?; "
    var q2 = "SELECT COUNT(*) AS count FROM usuarios; "
    var q3 = "SELECT * FROM usuarios"
    var q4 = q+q2+q3; 
    connection.query(q4, [nuevoUsuario], (err, results)=>{
        if(err){
            console.log(err);
            return; 
        } else{
            var count = results[1][0].count; 
            let lista = []; 
            for(let i = 0; i < results[2].length; i++){
                lista.push({nombre: results[2][i].nombre, apellido: results[2][i].apellido})
            }
            
            res.render(__dirname + "/home.html", {data:count, lista:lista});
               
        }
    }); 
})


// METODO PARA MODIFICAR USUARIOS

app.put("/api/home", (req, res)=>{
    const usuarioModificado = {
        nombre: req.body.nombre, apellido: req.body.apellido, email: req.body.email, id: req.body.id};
    var q = "UPDATE usuarios SET nombre=?, apellido=?, email=? WHERE id =?; "
    var q2 = "SELECT COUNT(*) AS count FROM usuarios; "; 
    var q3 = "SELECT * FROM usuarios" 
    var q4 = q+q2+q3; 
    connection.query(q4, [usuarioModificado.nombre, usuarioModificado.apellido, usuarioModificado.email, usuarioModificado.id], (err, results)=>{
        if(err){
            console.log(err); 
            return; 
        } else {
            var count = results[1][0].count;
            let lista = []; 
            for(let i = 0; i < results[2].length; i++){
                lista.push({nombre: results[2][i].nombre, apellido: results[2][i].apellido})
            } 
            res.render(__dirname + "/home.html", {data:count, lista:lista});
        }
    })
})

// METODO PARA BORRAR USUARIOS 

app.delete("/api/home", (req, res)=>{
    const usuarioBorrar = {
        id: req.body.id
    }
    var q = "DELETE FROM usuarios WHERE id=?; "; 
    var q2 = "SELECT COUNT(*) AS count FROM usuarios; "; 
    var q3 = "SELECT * FROM usuarios" 
    var q4 = q+q2+q3; 
    connection.query(q4, [usuarioBorrar.id], (err, results)=>{
        if(err){
            console.log(err); 
            return; 
        } else {
            var count = results[1][0].count; 
            let lista = []; 
            for(let i = 0; i < results[2].length; i++){
                lista.push({nombre: results[2][i].nombre, apellido: results[2][i].apellido})
            } 
            res.render(__dirname + "/home.html", {data:count, lista:lista});
        }
    })
})

// PUERTO

const port = process.env.PORT || 3000
app.listen(port, ()=>{console.log(`Listening on port ${port}...`); }); 