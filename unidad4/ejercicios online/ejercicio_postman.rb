require "uri"
require "net/http"

url = URI("https://jsonplaceholder.typicode.com/posts/1")

https = Net::HTTP.new(url.host, url.port);
https.use_ssl = true

request = Net::HTTP::Post.new(url)
request["Content-Type"] = "application/json"
request["Cookie"] = "__cfduid=d5b0f6158e9e101a8711ce94d4d0055bd1591067716"
request.body = "{\n\t\"title\": \"Post 101\",\n\t\"body\": \"Este es nuestro primer post\", \n\t\"userId\": 1\n}"

response = https.request(request)
puts response.read_body
