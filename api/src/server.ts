import express from 'express';

const app = express();

app.get('/', (req, res) => {
    res.send('Hello World!');
});


const port = 4000 || process.env.PORT;
app.listen(port, () => {
    console.log(`Server started at http://localhost:${port}`);
});