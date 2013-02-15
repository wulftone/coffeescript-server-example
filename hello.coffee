http = require 'http'
fs = require 'fs'

http.createServer (request, response) ->
  response.writeHead 200, {'Content-Type': 'text/html'}
  fs.readFile 'index.html', (err, data) ->
    throw err if err
    console.log data
    response.end data
.listen 9000

console.log 'Server running at http://127.0.0.1:9000/'
