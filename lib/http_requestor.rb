require 'net/http'
require 'uri'

class HttpRequestor
  def self.get_request(url)
    url = URI.parse(url)
    http = Net::HTTP.new(url.host, url.port)
    request = Net::HTTP::Get.new(url.request_uri)
    response = http.request(request)
  end
end
