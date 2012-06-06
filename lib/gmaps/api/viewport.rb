module GMaps
  module Api
    class Viewport
      attr_reader :northeast, :southwest

      def initialize(params = {})
        @northeast = LatLng.new(params['northeast'])
        @southwest = LatLng.new(params['southwest'])
      end
    end
  end
end
