class RemoteHotel < ActiveRecord::Base
	include HTTParty

	base_uri "http://api.ean.com/ean-services/rs/hotel/v3/list?"

	# def initialize()
	# end

	def self.find

		query = 
		    { 
		      "cid"=> "55505",
		      "minorRev"=> "99",
		      "apiKey"=> "cbrzfta369qwyrm9t5b8y8kf",
		      "locale" => "en_US", 
		      "curencyCode" => "USD",
		      "city" => "Seattle",
		      "stateProvinceCode" => "WA",
		      "countryCode" => "US",
		      "arrivalDate" => "8/1/2015",
		      "departureDate" => "8/3/2015",
		      "RoomGroup" => 
		      				{ 
		                	"Room" =>
		                        {
		                        "numberOfAdults" => 2
		                        }
		                	},
		      "numberOfResults" => 1
		    
		    }

		HTTParty.get("http://api.ean.com/ean-services/rs/hotel/v3/list?",
		query: query)
	end

end
