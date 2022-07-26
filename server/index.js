//Import from package
const  express = require('express');
const mongoose = require("mongoose");
//import from other files
const authRouter = require('./routes/auth');
const {connection} = require("mongoose");
// Init
const PORT = 3000;
const app = express();

// middlware
//client -> middleware -> server -> client
app.use(authRouter);

// Connections mongoose
mongoose.connect

app.listen(PORT, "localhost", () => {
    console.log(`connected at port ${PORT} hello` );
});