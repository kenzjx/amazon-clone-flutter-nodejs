const e = require('express');
const express = require('express');
const User = require('../models/user');
const bcryptjs = require('bcryptjs');
const jwt = require('jsonwebtoken');

const authRouter = express.Router();

authRouter.post('/api/signup', async (req, res) =>{
   try {
    const {name, email, password} = req.body;
    const existsingUser = await User.findOne({email});
    if(existsingUser)
    {
        return res.status(400).json({msg: 'User with same email already exists!'});
    }

    const hasedPasword = await bcryptjs.hash(password, 8);

    let user = new User({
        email,
        password:  hasedPasword,
        name
    });
    user = await user.save();
    res.json(user);
   } catch (error) {
        return res.status(500).json({error: error.message});
   }
    // get thew data from client
    // post that data in database
    // return that data to the user
})

authRouter.post('/api/signin', async (req, res) => {
    try {
        const {email, password} = req.body;

        const user = await User.findOne({email: email});
        if(!user)
        {
            return res.status(400).json({msg: 'User with this email does not exsits!'});

        }
        const isMatch = bcryptjs.compare(password, user.password);
        if(!isMatch){
            return res.status(400).json({msg: 'Incorrect password'});
        }

    } catch (error) {
        res.status(500).json({error: error.message});
    }
})

module.exports = authRouter;