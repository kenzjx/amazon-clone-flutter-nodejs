const express = require('express');
const admin = require("../middlewares/admin");
const productRoute = express.Router();
const auth = require('../middlewares/auth');


// /api/product? category = Essentials
productRoute.get('/api/products', auth, async (req, res) => {
    try {
        const products = await Product.find({ _id: '' });
        res.json(products);
    } catch (e) {
        res.status(500).json({ error: e.message });
    }
})

module.exports = productRoute;