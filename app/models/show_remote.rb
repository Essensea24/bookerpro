class ShowRemote < ActiveRecord::Base
	require HTTParty

	base_uri "https://book.api.ean.com/ean-services/rs/hotel/v3/info?"

	def self.find(hotelId, options)
		query = 
				{
			    "cid"=> "55505",
			    "minorRev"=> "99",
			    "apiKey"=> "cbrzfta369qwyrm9t5b8y8kf",
			    "locale" => "en_US", 
			    "curencyCode" => "USD",
			    "hotelId" => hotelId
				}

		HTTParty.get(base_uri, query: query)
	end

end
