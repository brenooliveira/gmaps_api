module GMaps
  module Api
    class Geometry
      attr_reader :location, :location_type, :viewport

      def initialize(params = {})
        @location = LatLng.new(params['location'])
        @location_type = params['location_type']
        @viewport = Viewport.new(params['viewport'])
      end
    end
  end
end
