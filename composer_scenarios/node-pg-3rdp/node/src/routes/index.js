var express = require('express');
var router = express.Router();
var mongoose = require('mongoose');
mongoose.connect('mongodb://mongocontainer/test');

var greetSchema = mongoose.Schema({
    name: String,
    description: String
});
var Greet = mongoose.model('Greet', greetSchema,'greet');

/* GET home page. */
router.get('/', function(req, res, next) {
  Greet.find(function (err, greets) {
    if (err) return console.error(err);
      console.log(greets);
    res.render('index', { title: 'Node-Express Docker sample','greets': greets});
  });

});

module.exports = router;
