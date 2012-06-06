module GMaps
  module Api
    class Address
      attr_reader :address_components, :formatted_address, :geometry, :types

      def initialize(params = {})
        @address_components = []

        params['address_components'].each do |c|
          @address_components<< AddressComponent.new(c)
        end

        @formatted_address = params['formatted_address']
        @geometry = Geometry.new(params['geometry'])

        @types = []
        params['types'].each do |type|
          @types << type
        end
      end
    end
  end
end
