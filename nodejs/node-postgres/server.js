
const express = require('express');
const bodyParser = require('body-parser');
const UserController = require('./src/controllers/user.controller')

const app = express();

app.use(bodyParser.json());

app.get('/', (req, res) => {
    res.send('Welcome to the server!');
  });

app.get('/users', (req, res) => UserController.getAllUsers(req, res));

module.exports = app;