// Express framework
var express = require('express'); 
var app = express();

// Handle requests to /
app.get('/', function (req, res) {
  res.send('Hello World!');
});

// Setup port
app.listen(process.env.PORT || 8000);

module.exports = app;