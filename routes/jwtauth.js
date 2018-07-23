const express = require('express');
const router = express.Router();

/* GET home page. */
router.get('/aaa', (req, res) => {
  res.render('index', { title: 'checking' });
});

router.get('/', function(req, res){
  res.json({
    "Tutorial": "Welcome to the Node express JWT Tutorial"
  });
});


module.exports = router;
