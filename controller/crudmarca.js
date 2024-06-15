const conexion = require('../database/db');

exports.saveMarca = (req, res)=>{
    const modelo = req.body.modelo;
    const descripcion = req.body.descripcion;
    conexion.query('INSERT INTO marca SET ?', {modelo:modelo, descripcion:descripcion}, (error, results)=>{
        if(error){
            console.log(error);
        }else{
            res.redirect('/marca/index')
        }
    })
}


//update marca
exports.updateMarca=(req, res)=>{
    const id = req.body.id;
    const modelo = req.body.modelo;
    const descripcion = req.body.descripcion;
    conexion.query('UPDATE marca SET ? WHERE id =?', [{modelo:modelo, descripcion:descripcion}, id], (error, results)=>{
        if(error){
            console.log(error);
        }else{
            res.redirect('/marca/index')
        } 
    })
}