Gem::Specification.new do |s|
  s.name        = 'gmaps_ws'
  s.version     = '0.1.0'
  s.date        = '2012-06-06'
  s.summary     = "Google Maps Webservice"
  s.description = "A ruby implementation for calling google maps webservices"
  s.authors     = ["Rodrigo Saito"]
  s.email       = 'rodrigo.saito@gmail.com'
  s.files       = ["lib/gmaps_api.rb"]
  s.homepage    = 'http://rubygems.org/'
  s.add_dependency 'httparty', '0.8.3'
end
