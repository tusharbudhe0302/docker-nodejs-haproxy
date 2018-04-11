const expresss = require('express');
const app = expresss();
const port = process.env.NODE_SERVER_PORT || 82;
app.get('/', (req, res, next) => {
    res.send('Hello world from server web app!');
});
app.listen(port, () => {
    console.log(`server app listen on port : ${port}`);
});