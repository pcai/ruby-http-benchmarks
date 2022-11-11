require_relative "common"

url = "http://localhost:9292/download"

profile("RestClient") do
  require "rest-client"
  response = RestClient.get(url)
end

profile("HTTParty") do
  require "httparty"
  response = HTTParty.get(url)
end

profile("http.rb") do
  require "http"
  response = HTTP.get(url)
end

profile("Net::HTTP") do
  require "net/http"
  response = Net::HTTP.get(URI(url))
end

profile("faraday") do
  require "faraday"
  response = Faraday.get(url)
end
