require "uri"
require "net/http"
require 'json'

def request(address)
  url = URI(address)

  https = Net::HTTP.new(url.host, url.port);
  http.use_ssl = true # Se agrega esta línea
  http.verify_mode = OpenSSL::SSL::VERIFY_PEER # Se agrega esta otra línea

  request = Net::HTTP::Get.new(url)

  response = https.request(request)
  JSON.parse response.read_body
end

prices = request("https://api.coindesk.com/v1/bpi/historical/close.json")

select_data = princes.select{|k,v| v < 5000 }

#Solucion 2
under_5000 = prices.values.select {|x| x < 5000}
dates = under_5000.map {|x| prices.invert[x]}
