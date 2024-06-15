//1.- invocamos a express
    const express = require('express');
    const app = express();

//2.- motor de plantillas
    app.set('view engine', 'ejs');

// 3.- usamos el archivo router.js
app.use('/',require('./router'));

//4.- elgir metodo para capturar nuevo usuario
    app.use(express.urlencoded({extended:false}));
    app.use(express('json'));


app.set('port', process.env.PORT || 3000);
app.listen(app.get('port'), () => {
    console.log("server listening in port", app.get('port'));
    //listening
})