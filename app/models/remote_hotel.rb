class RemoteHotel < ActiveRecord::Base
	include HTTParty

	base_uri "http://api.ean.com/ean-services/rs/hotel/v3/list?"

	def self.find(destinationString, arrivalDate, departureDate)

		query = 
		    { 
		      "cid"=> "55505",
		      "minorRev"=> "99",
		      "apiKey"=> "cbrzfta369qwyrm9t5b8y8kf",
		      "locale" => "en_US", 
		      "curencyCode" => "USD",
		      "destinationString" => destinationString,
		      "arrivalDate" => arrivalDate,
		      "departureDate" => departureDate,
		      "RoomGroup" => 
		      				{ 
		                	"Room" =>
		                        {
		                        "numberOfAdults" => 2
		                        }
		                	},
		      "numberOfResults" => 20
		    }

		HTTParty.get(base_uri, query: query)
	end

end
