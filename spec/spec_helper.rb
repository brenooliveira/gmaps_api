require 'rspec'
require 'fakeweb'
require 'gmaps_ws'

require_relative 'responses/geocode'

FakeWeb.allow_net_connect = false

RSpec.configure do |config|
  config.color_enabled = true
  config.formatter     = 'documentation'
end
