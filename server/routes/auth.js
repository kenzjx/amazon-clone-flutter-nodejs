const express = require('express');

const authRouter = express.Router();

authRouter.post('/api/signup', (req, res) =>{
    console.log(req.body);
    // get thew data from client
    // post that data in database
    // return that data to the user
})

module.exports = authRouter;