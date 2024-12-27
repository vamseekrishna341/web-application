const express = require('express');
const mysql = require('mysql');
const app = express();
const port = 3000;

const db = mysql.createConnection({
  host: 'your-rds-endpoint',
  user: 'your-db-user',
  password: 'your-db-password',
  database: 'your-db-name',
});

db.connect((err) => {
  if (err) throw err;
  console.log('Connected to the database!');
});

app.get('/', (req, res) => {
  res.send('Hello World from Node.js API');
});

app.listen(port, () => {
  console.log(`Server running on port ${port}`);
});
