class RoomAvail < ActiveRecord::Base
	include HTTParty

	base_uri "http://api.ean.com/ean-services/rs/hotel/v3/avail?"

		def self.find(hotelId)

			query = 
			    { 
			    "cid"=> "55505",
			    "minorRev"=> "99",
			    "apiKey"=> "cbrzfta369qwyrm9t5b8y8kf",
			    "locale" => "en_US", 
			    "curencyCode" => "USD",
			    "hotelId" => hotelId,
			    "arrivalDate" => "10/25/15",
			    "departureDate" => "10/26/15",
			    "includeRoomImages" => true,
			    "RoomGroup" => 
			      				{ 
			                	"Room" =>
			                        {
			                        "numberOfAdults" => 2
			                        }
			                	}
			    }


			HTTParty.get(base_uri, query: query)
		end

end

