const express = require('express');

const router = express.Router();

router.route('/').get(function (req, res, next) {
  res.render('customer/products/all-products');
});

module.exports = router;
