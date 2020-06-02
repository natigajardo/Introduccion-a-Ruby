require "uri"
require "net/http"
require 'json'

def request(address)
  url = URI(address)

  https = Net::HTTP.new(url.host, url.port);
  http.use_ssl = true # Se agrega esta línea
  http.verify_mode = OpenSSL::SSL::VERIFY_PEER # Se agrega esta otra línea

  request = Net::HTTP::Get.new(url)
  request["Cookie"] = "__cfduid=d5b0f6158e9e101a8711ce94d4d0055bd1591067716"

  response = https.request(request)
  JSON.parse response.read_body
end

body = request('https://jsonplaceholder.typicode.com/posts')
body.each do |post|
  puts post['title']
end
