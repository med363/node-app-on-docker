const express = require('express');
// Constantes
const PORT = 8080;
const HOST = '0.0.0.0';
var os = require("os");
// App
const app = express();
app.get('/', (req, res) => {
 res.send('<center>Hello Med Amine Buid<br>Application web <fontcolor="0000FF"><b>version 2</b> </fontcolor=><br> Conteneur : <b>' + String(os.hostname()));
});
app.listen(PORT, HOST);
console.log(String(os.hostname()));