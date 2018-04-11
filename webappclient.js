const expresss = require('express');
const app = expresss();
const port = process.env.NODE_CLIENT_PORT || 81;
app.get('/', (req, res, next) => {
    res.send('Hello world from client web app!');
});
app.listen(port, () => {
    console.log(`client app listen on port : ${port}`);
});