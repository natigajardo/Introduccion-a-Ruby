require "uri"
require "net/http"
require 'json'

def request(address)
  url = URI(address)

  https = Net::HTTP.new(url.host, url.port);
  https.use_ssl = true

  request = Net::HTTP::Get.new(url)
  request["Cookie"] = "__cfduid=d5b0f6158e9e101a8711ce94d4d0055bd1591067716"

  response = https.request(request)
  JSON.parse response.read_body
end

data = request('https://jsonplaceholder.typicode.com/photos')[0..10]
photos = data.map{|x| x['url']}
html = ""
data.each do |photo|
  html += "<img src=\"#{photo}\">\n"
end

File.write('output.html',html)
