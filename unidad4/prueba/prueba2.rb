require "uri"
require "net/http"
require 'json'
#mi clave : zRmHxGlSNlQ6k4ws3zkjRlPEQYp1RkwSRIQhmqDl
api_key = "zRmHxGlSNlQ6k4ws3zkjRlPEQYp1RkwSRIQhmqDl"

def request(url, api)
  url = URI("#{url}&api_key=#{api}")
  https = Net::HTTP.new(url.host, url.port);
  https.use_ssl = true
  https.verify_mode = OpenSSL::SSL::VERIFY_PEER
  request = Net::HTTP::Get.new(url)
  response = https.request(request)
  JSON.parse response.read_body
end

#Para ver url de la foto del lugar 0
pp request("https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&camera=fhaz", api_key)['photos'][0]['img_src']

#Para ver cantidad de fotos del codigo
pp request("https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&camera=fhaz", api_key)['photos'].count

#nombre de la camara de la foto en la posición 0
pp request("https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&camera=fhaz", api_key)['photos'][0]['camera']['full_name']
