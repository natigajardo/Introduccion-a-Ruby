require 'uri'
require 'net/http'
require 'json'

def request(url_requested)
url = URI(url_requested)

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_PEER

request = Net::HTTP::Get.new(url)
request['app_id'] = 'ed82a41c'
request['app_key'] = '7c52feecdfb50d872e97d15f9ac098b8'

response = http.request(request)
return JSON.parse(response.body)

end

word = "test"
result = request("https://od-api.oxforddictionaries.com:443/api/v1/entries/en/test")
result['results'][0]['lexicalEntries'][0]['entries'][0]['senses'][0]['definitions']
