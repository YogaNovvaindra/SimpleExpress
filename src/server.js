const express = require('express');

const app = express();

app.get('/', (req, res) => {
  res.send('eheheheehehehe');
});

app.listen(3000, () => console.log('Example app is listening on port 3000.'));