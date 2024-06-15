const conexion = require('../database/db');

exports.saveInventario = (req, res)=>{
    const orden = req.body.orden;
    const id_producto = req.body.id_producto;
    const estado = req.body.estado;
    const cantidad = req.body.cantidad;
    const descripcion = req.body.descripcion;
    const fecha = req.body.fecha;
    const usuario = req.body.usuario;
    conexion.query('INSERT INTO inventario SET ?', {orden:orden, id_producto:id_producto, estado:estado, cantidad:cantidad, descripcion:descripcion, fecha:fecha, usuario:usuario}, (error, results)=>{
        if(error){
            console.log(error);
        }else{
            res.redirect('/inventario/index')
        }
    })
}


//update inventario
exports.updateInventario=(req, res)=>{
    const id = req.body.id;
    const orden = req.body.orden;
    const id_producto = req.body.id_producto;
    const estado = req.body.estado;
    const cantidad = req.body.cantidad;
    const descripcion = req.body.descripcion;
    const fecha = req.body.fecha;
    const usuario = req.body.usuario;
    conexion.query('UPDATE inventario SET ? WHERE id =?', [{orden:orden, id_producto:id_producto, estado:estado, cantidad:cantidad, descripcion:descripcion, fecha:fecha, usuario:usuario}, id], (error, results)=>{
        if(error){
            console.log(error);
        }else{
            res.redirect('/inventario/index')
        } 
    })
}