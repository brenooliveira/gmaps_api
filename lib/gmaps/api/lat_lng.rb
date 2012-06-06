module GMaps
  module Api
    class LatLng
      attr_reader :lat, :lng

      def initialize(params = {})
        @lat = params['lat']
        @lng = params['lng']
      end
    end
  end
end
