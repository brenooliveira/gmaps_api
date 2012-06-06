module GMaps
  module Api
    class Geocode
      def address(address)
        resp = HTTParty.get "http://maps.googleapis.com/maps/api/geocode/json?address=#{url_encode(address)}&sensor=false"

        results = JSON.parse(resp.body)['results']

        addresses = []

        results.each do |result|
          addresses << Address.new(result)
        end

        addresses
      end

      private
      def url_encode(str)
        CGI::escape(str)
      end
    end
  end
end
