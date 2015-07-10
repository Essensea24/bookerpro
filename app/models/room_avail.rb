class RoomAvail < ActiveRecord::Base
	include HTTParty

	base_uri "http://api.ean.com/ean-services/rs/hotel/v3/avail?"

		def self.find(hotelId)
			query = 
			    { 
			    "cid"=> "55505",
			    "minorRev"=> "99",
			    "apiKey"=> "cbrzfta369qwyrm9t5b8y8kf",
			    "apiExperience" => "PARTNER_AFFILIATE",
			    "hotelId" => hotelId,
			    "arrivalDate" => "07/30/15",
			    "departureDate" => "08/5/15",
			    "includeRoomImages" => true,
			    "RoomGroup" => 
			      				{ 
			                	"Room" =>
			                        {
			                        "numberOfAdults" => 2
			                        }
			                	},
			    }


			HTTParty.get(base_uri, query: query)
		end

end

