const express = require('express');
const res = require('express/lib/response');
const pageSchettini = express();
const path = require('path');
const port = process.env.PORT || 3000;

//configuraciones
pageSchettini.set('views', path.join(__dirname + '/views'));
pageSchettini.engine('html', require('ejs').renderFile);
pageSchettini.set('view engine', 'ejs');

//rutas
pageSchettini.get('/', (req, res) =>  {
    res.render('index.html')
});
pageSchettini.get('/multimedia', (req, res) =>  {
    res.render('multimedia.html')
});
pageSchettini.get('/nuestrosproductos', (req, res) =>  {
    res.render('nuestrosproductos.html')
});
pageSchettini.get('/quienesomos', (req, res) =>  {
    res.render('quienesomos.html')
});


//archivos estáticos
pageSchettini.use(express.static(path.join(__dirname, 'public')));

//escuchando al servidor
pageSchettini.listen(port);