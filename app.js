const http = require('http');
const port = 3000;
http.createServer((req, res) => {
  res.write('Hello World!');
  res.end();
}).listen(port, () => {
  console.log(`Server running at http://localhost:${port}`);
});