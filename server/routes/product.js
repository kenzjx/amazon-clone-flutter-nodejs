const express = require('express');
const admin = require("../middlewares/admin");
const productRoute = express.Router();
const auth = require('../middlewares/auth');
const { Product } = require('../models/product');


// /api/product? category = Essentials
// api/amazon?theme=dark

// api/products:category=Essentials

productRoute.get('/api/products', auth, async (req, res) => {
    try {
        console.log(req.params.category);
        const products = await Product.find({ category: req.query.category });
        res.json(products);
    } catch (e) {
        res.status(500).json({ error: e.message });
    }
})

module.exports = productRoute;