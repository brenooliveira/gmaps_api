module GMaps
  module Api
    class AddressComponent
      attr_reader :short_name, :long_name, :types

      def initialize(params = {})
        @short_name = params['short_name']
        @long_name = params['long_name']

        @types = []

        params['types'].each do |type|
          @types << type
        end
      end
    end

  end
end
