const express = require('express');
const bodyParser = require('body-parser');
const index=require("./routes/index");
const details=require("./routes/details");

var app = express();
var server = app.listen(3000);

app.use(bodyParser.urlencoded({extended:false}));

app.use(express.static('public'));
//git
