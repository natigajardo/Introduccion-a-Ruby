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


def build_web_page(datos_request)

  output = "<html>" + "\n"
  output += "<head>" + "\n"
  output += "</head>" + "\n"
  output += "<body>" + "\n"
  output += "<ul>" + "\n"

  datos_request['photos'].count.times do |i|
      output += "  <li><img src='#{datos_request['photos'][i]['img_src']}'></li>\n"
  end

  output += "</ul>" + "\n"
  output += "</body>" + "\n"
  output += "</html>"

  File.write('output.html',output)
end

def photos_count(datos_request)
  nuevo_hash = {}

  datos_request['photos'].count.times do |i|
    nuevo_hash[:nombre_camara] = datos_request['photos'][i]['camera']['full_name']
  end

  nuevo_hash[:cantidad_fotos] = datos_request['photos'].count
  puts nuevo_hash
end


build_web_page(request("https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&camera=fhaz", api_key))

photos_count(request("https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&camera=fhaz", api_key))
