
const express = require('express');
const router = express.Router();
const path = require("path");
const http = require("http");

// 1.- exportamos el archivo router
    module.exports = router;

//2.- seteamos urlencond para capturaar los datos del formulario
    router.use(express.json());
    router.use(express.urlencoded({extended: true}));
    router.use(express.static('static'));


//3.- invocamos a totenv
    const dotenv = require('dotenv');
    dotenv.config({path:'./env/.env'});

//4.- el directorio publico
    router.use('/resources', express.static('public'));
    router.use('/resources', express.static(__dirname + '/public'));


//6.- invocamos a bcryptjs
    const bcryptjs = require('bcryptjs');

// 7.- variable de sesion
    const session = require('express-session');
    router.use(session({
        secret:'secret',
        resave: true,
    saveUninitialized:true
    }));

// 8.- invocamos a la conexion DB
    const connection = require('./database/db');


// 9.- Estableciendo las rutas
    router.get("/login", (req, res) =>{
        res.render("login");   
    })

    router.get("/register", (req, res) =>{
        res.render("register");   
    })



// 10.- Registration
    router.post('/register', async (req, res)=>{
        const user = req.body.user;
        const name = req.body.name;
        const rol = req.body.rol;
        const pass = req.body.pass;
        let passwordHaash = await bcryptjs.hash(pass, 8);        
        connection.query('INSERT INTO users SET ?',  {user:user, name:name, rol:rol, pass:passwordHaash}, async(error)=>{
            if(error){
                res.render('register',{
                    alert: true,
                    alertTitle: '¡UPS!, Error',
                    alertMessage: 'comunicar al administrador',
                    alertIcon: "error",
                    showConfirmButton: true,
                    timer: 2000,
                    ruta: ''
                });
            }else{
                res.render('register',{
                    alert:true,
                    alertTitle: "Registrando...",
                    alertMessage: "¡Registro guardado exitosamente!",
                    alertIcon: 'success',
                    showConfirmButton:false,
                    timer:2500,
                    ruta:''
                })
            }
        })
    })

// 11.- autenticación de usuario
router.post('/auth', async(req, res)=>{
const user = req.body.user;
const pass = req.body.pass;
//let passwordHaash = await bcryptjs.hash(pass,8);
if(user && pass){
        connection.query('SELECT * FROM users WHERE user= ?', [user], async (error, results)=>{
        if(results.error == 0 || !(await bcryptjs.compare(pass, results[0].pass))){
            res.render('login',{
                alert: true,
                alertTitle: '¡UPS!, Error',
                alertMessage: 'Password incorrecto',
                alertIcon: "error",
                showConfirmButton: true,
                timer: 2000,
                ruta: 'login'
            });
        }else{
            req.session.logeoding=true;
            req.session.name = results[0].name
            res.render('login',{
                alert:true,
                alertTitle: '¡ Bienvenido !',
                alertMessage: 'Autenticando...',
                alertIcon: "success",
                showConfirmButton: false,
                timer:2500,
                ruta:''
            });
        }
    })
}else{
    res.render('login',{
        alert:true,
        alertTitle: '¡ Advertencia !',
        alertMessage: 'Ingresar usuario y/o passaword...',
        alertIcon: "warning",
        showConfirmButton: true,
        timer:2000,
        ruta:'login'
    });
}
})


//12.- Metodo de autenticación de paginas
router.get('/', (req, res)=>{
if(req.session.logeoding){
    res.render('index',{
        login: true,
        name: req.session.name
    });
}else{
    res.render('index',{
        login: false,
        name: 'Iniciar sesión'
    })
}
})


    

//13.- Cerrar sesion
router.get('logout',(req, res)=>{
req.session.destroy(()=>{
    res.redirect('/')
})
})


// 14.-  mostrar todos los registros del usuario
    router.get('/user/index', (req, res)=>{        
        connection.query('SELECT * FROM users', (error, results)=>{
            if(error){
                throw error;
            }else{
                res.render('user/index',{results:results});           
            }
        })
    })



// 15.- Ruta para crear usuarios
    router.get('/user/create', (req, res)=>{
        res.render('user/create');
    })

//16.- Ruta para editar registros
    router.get('/user/edit/:id', (req, res)=>{
        const id = req.params.id;
        connection.query('SELECT * FROM users WHERE id=?', [id], (error, results)=>{
            if(error){
                throw error;
            }else{
                res.render('user/edit',{user:results[0]});           
            }
        })
    })

    const cruduser = require('./controller/cruduser');
    router.post('/save', cruduser.save);
    router.post('/update', cruduser.update);





// inicio enrrutador de marca
    // 1.-  mostrar todos los registros de marcas
    router.get('/marca/index', (req, res)=>{        
        connection.query('SELECT * FROM marca', (error, results)=>{
            if(error){
                throw error;
            }else{
                res.render('marca/index',{results:results});           
            }
        })
    })

    //2.- ruta para crear marca
    router.get('/marca/create', (req, res)=>{
        res.render('marca/create');
    })

    //3.- Ruta para editar marcas
    router.get('/marca/edit/:id', (req, res)=>{
        const id = req.params.id;
        connection.query('SELECT * FROM marca WHERE id=?', [id], (error, results)=>{
            if(error){
                throw error;
            }else{
                res.render('marca/edit',{marca:results[0]});           
            }
        })
    })

    const crudmarca = require('./controller/crudmarca');
    router.post('/saveMarca', crudmarca.saveMarca);
    router.post('/updateMarca', crudmarca.updateMarca);



    
// inicio enrrutador de proveedor
    // 1.-  mostrar todos los registros de proveedor
    router.get('/proveedor/index', (req, res)=>{        
        connection.query('SELECT * FROM proveedor', (error, results)=>{
            if(error){
                throw error;
            }else{
                res.render('proveedor/index',{results:results});           
            }
        })
    })

    //2.- ruta para crear proveedor
    router.get('/proveedor/create', (req, res)=>{
        res.render('proveedor/create');
    })

    //3.- Ruta para editar marcas
    router.get('/proveedor/edit/:id', (req, res)=>{
        const id = req.params.id;
        connection.query('SELECT * FROM proveedor WHERE id=?', [id], (error, results)=>{
            if(error){
                throw error;
            }else{
                res.render('proveedor/edit',{proveedor:results[0]});           
            }
        })
    })

    const crudproveedor = require('./controller/crudproveedor');
    router.post('/saveProveedor', crudproveedor.saveProveedor);
    router.post('/updateProveedor', crudproveedor.updateProveedor);



// inicio enrrutador de producto
    // 1.-  mostrar todos los registros de prodcuto
    router.get('/producto/index', (req, res)=>{        
        connection.query('SELECT * FROM producto', (error, results)=>{
            if(error){
                throw error;
            }else{
                res.render('producto/index',{results:results});           
            }
        })
    })

    //2.- ruta para crear proveedor
    router.get('/producto/create', (req, res)=>{
        res.render('producto/create');
    })

    //3.- Ruta para editar marcas
    router.get('/producto/edit/:id', (req, res)=>{
        const id = req.params.id;
        connection.query('SELECT * FROM producto WHERE id=?', [id], (error, results)=>{
            if(error){
                throw error;
            }else{
                res.render('producto/edit',{producto:results[0]});           
            }
        })
    })

    const crudproducto = require('./controller/crudproducto');
    router.post('/saveProducto', crudproducto.saveProducto);
    router.post('/updateProducto', crudproducto.updateProducto);



// inicio enrrutador de inventario
    // 1.-  mostrar todos los registros de inventario
    router.get('/inventario/index', (req, res)=>{        
        connection.query('SELECT * FROM inventario', (error, results)=>{
            if(error){
                throw error;
            }else{
                res.render('inventario/index',{results:results});           
            }
        })
    })

    //2.- ruta para crear inventario
    router.get('/inventario/create', (req, res)=>{
        res.render('inventario/create');
    })

    //3.- Ruta para editar inventario
    router.get('/inventario/edit/:id', (req, res)=>{
        const id = req.params.id;
        connection.query('SELECT * FROM inventario WHERE id=?', [id], (error, results)=>{
            if(error){
                throw error;
            }else{
                res.render('inventario/edit',{inventario:results[0]});           
            }
        })
    })


   
    // Ruta de index
   
    // 4.- Registrar inventario raiz index
    router.post('/index', async (req, res)=>{
        const orden = req.body.orden;
        const id_producto = req.body.id_producto;
        const estado = req.body.estado;
        const cantidad = req.body.cantidad;
        const descripcion = req.body.descripcion;
        const fecha = req.body.fecha;
        const usuario = req.body.usuario;      
        connection.query('INSERT INTO inventario SET ?',  {orden:orden, id_producto:id_producto, estado:estado, cantidad:cantidad, descripcion:descripcion, fecha:fecha, usuario:usuario}, async(error,results)=>{
            if(error){
                console.log(error);
            }else{
                
            }
        })
    })

    const crudinventario = require('./controller/crudinventario');
    router.post('/saveInventario', crudinventario.saveInventario);
    router.post('/updateInventario', crudinventario.updateInventario);

     /* Ruta mostrar prioductos en form raiz index */
    router.get('/', (req, res)=>{        
        connection.query('SELECT * FROM producto', (error, results)=>{
            if(error){
                throw error;
            }else{
                res.json('index',{results:results});           
            }
        })
    })
   
    
    

    //capturar errores
    router.use((error, req, res, next, results)=>{
        res.status(400).json({
            status: 'error',
            message: error.message,
        });
    });
    




   
