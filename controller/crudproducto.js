const conexion = require('../database/db');

exports.saveProducto = (req, res)=>{
    const codigo = req.body.codigo;
    const descripcion = req.body.descripcion;
    const presentacion = req.body.presentacion;
    const id_marca = req.body.id_marca;
    const id_proveedor = req.body.id_proveedor;
    const ubicacion = req.body.ubicacion;
    const estado = req.body.estado;
    const precio = req.body.precio;
    const stock = req.body.stock;
    const total = req.body.total;
    const id_user = req.body.id_user;
    conexion.query('INSERT INTO producto SET ?', {codigo:codigo, descripcion:descripcion, presentacion:presentacion, id_marca:id_marca, id_proveedor:id_proveedor, ubicacion:ubicacion, estado:estado, precio:precio, stock:stock, total:total, id_user:id_user}, (error, results)=>{
        if(error){
            console.log(error);
        }else{
            res.redirect('/producto/index')
        }
    })
}


//update marca
exports.updateProducto=(req, res)=>{
    const id = req.body.id;
    const codigo = req.body.codigo;
    const descripcion = req.body.descripcion;
    const presentacion = req.body.presentacion;
    const id_marca = req.body.id_marca;
    const id_proveedor = req.body.id_proveedor;
    const ubicacion = req.body.ubicacion;
    const estado = req.body.estado;
    const precio = req.body.precio;
    const stock = req.body.stock;
    const total = req.body.total;
    const id_user = req.body.id_user;
    conexion.query('UPDATE producto SET ? WHERE id =?', [{codigo:codigo, descripcion:descripcion, presentacion:presentacion, id_marca:id_marca, id_proveedor:id_proveedor, ubicacion:ubicacion, estado:estado, precio:precio, stock:stock, total:total, id_user:id_user}, id], (error, results)=>{
        if(error){
            console.log(error);
        }else{
            res.redirect('/producto/index')
        } 
    })
}