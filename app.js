const express = require('express');
const path = require('path');

const app = express();
const port = process.env.PORT || 3000;

app.use(express.static(path.join(__dirname, 'public')));

// simple health endpoint
app.get('/api/health', (req, res) => res.json({ status: 'ok' }));

app.listen(port, () => {
  console.log(`SIP Calculator app listening on port ${port}`);
});
