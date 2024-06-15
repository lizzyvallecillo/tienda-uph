const conexion = require('../database/db');

exports.saveProveedor = (req, res)=>{
    const descripcion = req.body.descripcion;
    const estado = req.body.estado;
    const fecha = req.body.fecha;
    conexion.query('INSERT INTO proveedor SET ?', {descripcion:descripcion, estado:estado, fecha:fecha }, (error, results)=>{
        if(error){
            console.log(error);
        }else{
            res.redirect('/proveedor/index')
        }
    })
}


//update marca
exports.updateProveedor=(req, res)=>{
    const id = req.body.id;
    const descripcion = req.body.descripcion;    
    const estado = req.body.estado;   
    const fecha = req.body.fecha;
    conexion.query('UPDATE proveedor SET ? WHERE id =?', [{descripcion:descripcion, estado:estado, fecha:fecha}, id], (error, results)=>{
        if(error){
            console.log(error);
        }else{
            res.redirect('/proveedor/index')
        } 
    })
}