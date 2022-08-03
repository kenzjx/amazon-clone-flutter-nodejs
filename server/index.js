//Import from package
const express = require('express');
const mongoose = require("mongoose");
//import from other files
const authRouter = require('./routes/auth');
const { connection } = require("mongoose");
const { options } = require('./routes/auth');
const adminRouter = require('./routes/admin');
const productRoute = require('./routes/product');
// Init
const PORT = 3000;
const app = express();
const DB = 'mongodb://admin:admin@localhost';
// middlware
//client -> middleware -> server -> client
app.use(express.json());
app.use(authRouter);
app.use(adminRouter);
app.use(productRoute);

// Connections mongoose

mongoose.connect(DB,
).then(() => console.log('Connect Succesfull')).catch(e => console.log(e));


app.listen(PORT, "0.0.0.0", () => {
    console.log(`connected at port ${PORT} hello`);
});