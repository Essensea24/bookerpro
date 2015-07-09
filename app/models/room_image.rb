class RoomImage < ActiveRecord::Base
		include HTTParty

		base_uri "http://api.ean.com/ean-services/rs/hotel/v3/roomImages?"

		def self.find(hotelId)
			query = 
			    { 
			    "cid"=> "55505",
			    "minorRev"=> "99",
			    "apiKey"=> "cbrzfta369qwyrm9t5b8y8kf",
			    "hotelId" => hotelId
			    }

		HTTParty.get(base_uri, query: query)

end
