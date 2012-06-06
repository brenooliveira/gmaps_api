require 'spec_helper'

describe "Geocode" do

  let :geocode do
    GMaps::Api::Geocode.new
  end

  before :each do
    FakeWeb.register_uri  :get, "http://maps.googleapis.com/maps/api/geocode/json?address=Brandenburg+Gate&sensor=false", :body => Responses::Geocode.address
  end

  it "should find a location" do
    addresses = geocode.address "Brandenburg Gate"

    addresses.size.should eq(1)

    addresses.first.address_components.size.should eq(7)
    addresses.first.address_components.first.short_name.should eq("Brandenburg Gate")
    addresses.first.address_components.first.long_name.should eq("Brandenburg Gate")
    addresses.first.address_components.first.types.should eq(["point_of_interest", "establishment"])

    addresses.first.formatted_address.should eq("Brandenburg Gate, Pariser Platz, 10117 Berlin, Germany")

    addresses.first.geometry.should_not be_nil
    addresses.first.geometry.location.lat.should eq(52.51630)
    addresses.first.geometry.location.lng.should eq(13.37950)
    addresses.first.geometry.location_type.should eq("APPROXIMATE")
    addresses.first.geometry.viewport.northeast.lat.should eq(52.52308950)
    addresses.first.geometry.viewport.northeast.lng.should eq(13.39550740)
    addresses.first.geometry.viewport.southwest.lat.should eq(52.50950940)
    addresses.first.geometry.viewport.southwest.lng.should eq(13.36349260)

    addresses.first.types.should eq(["point_of_interest", "establishment"])
  end

end

