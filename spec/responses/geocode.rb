module Responses
  module Geocode
    def self.address
      <<-ENDRESP
{
   "results" : [
      {
         "address_components" : [
            {
               "long_name" : "Brandenburg Gate",
               "short_name" : "Brandenburg Gate",
               "types" : [ "point_of_interest", "establishment" ]
            },
            {
               "long_name" : "Pariser Platz",
               "short_name" : "Pariser Platz",
               "types" : [ "route" ]
            },
            {
               "long_name" : "Berlin",
               "short_name" : "Berlin",
               "types" : [ "locality", "political" ]
            },
            {
               "long_name" : "Berlin",
               "short_name" : "Berlin",
               "types" : [ "administrative_area_level_2", "political" ]
            },
            {
               "long_name" : "Berlin",
               "short_name" : "Berlin",
               "types" : [ "administrative_area_level_1", "political" ]
            },
            {
               "long_name" : "Germany",
               "short_name" : "DE",
               "types" : [ "country", "political" ]
            },
            {
               "long_name" : "10117",
               "short_name" : "10117",
               "types" : [ "postal_code" ]
            }
         ],
         "formatted_address" : "Brandenburg Gate, Pariser Platz, 10117 Berlin, Germany",
         "geometry" : {
            "location" : {
               "lat" : 52.51630,
               "lng" : 13.37950
            },
            "location_type" : "APPROXIMATE",
            "viewport" : {
               "northeast" : {
                  "lat" : 52.52308950,
                  "lng" : 13.39550740
               },
               "southwest" : {
                  "lat" : 52.50950940,
                  "lng" : 13.36349260
               }
            }
         },
         "types" : [ "point_of_interest", "establishment" ]
      }
   ],
   "status" : "OK"
}
      ENDRESP
    end
  end
end
