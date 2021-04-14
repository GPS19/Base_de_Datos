"use strict"; 

// AGREGAR USUARIO

function agregarUsuario(evento){
    evento.preventDefault();
    console.log("Script conectado"); 
    let form = document.getElementById("form-agregar"); 
    let nombre = form.nombre.value; 
    let apellido = form.apellido.value;
    let email = form.email.value; 
    // console.log(nombre, apellido, email);
    let nuevoUsuario = {
        nombre: nombre, 
        apellido: apellido, 
        email: email
    }; 

    let response = fetch('http://localhost:3000/api/home', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json;charset=utf-8'
        }, body: JSON.stringify(nuevoUsuario)}).then(response =>response.text())
}

// MODIFICAR USUARIO

function modificarUsuario(evento){
    evento.preventDefault(); 
    let form = document.getElementById("form-modificar"); 
    let id = form.identificador.value;
    let nombre = form.nombre.value; 
    let apellido = form.apellido.value;
    let email = form.email.value; 
    console.log(nombre, apellido, email, id);
    let usuarioModificado = {
        nombre: nombre, 
        apellido: apellido, 
        email: email, 
        id: id
    }; 
    let response = fetch('http://localhost:3000/api/home', {
        method: 'PUT',
        headers: {
            'Content-Type': 'application/json;charset=utf-8'
        }, body: JSON.stringify(usuarioModificado)}).then(response =>response.text())

}


// BORRAR USURIO

function borrarUsuario(evento){
    evento.preventDefault();
    let form = document.getElementById("form-borrar"); 
    let id = form.identificador.value; 
    let usuarioBorrar = {
        id: id
    }
    let response = fetch('http://localhost:3000/api/home', {
        method: 'DELETE',
        headers: {
            'Content-Type': 'application/json;charset=utf-8'
        }, body: JSON.stringify(usuarioBorrar)}).then(response =>response.text())
}

function main(){
    // Agregar la función y el event listener a form-agregar
    let form1 = document.getElementById("form-agregar"); 
    form1.addEventListener("submit", function(e) {agregarUsuario(e);}); 

    // Agregar la función y el event listener a form-modificar
    let form2 = document.getElementById("form-modificar"); 
    form2.addEventListener("submit", function(e) {modificarUsuario(e);}); 

    // Agregar la función y el event listener a form-borrar
    let form3 = document.getElementById("form-borrar"); 
    form3.addEventListener("submit", function(e) {borrarUsuario(e);})
}