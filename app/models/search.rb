class Search < ActiveRecord::Base
	include HTTParty
	
 base_uri  'http://api.ean.com/ean-services/rs/hotel/v3/list?'

  def unique_url
    response = HTTParty.get(API_URL)
    json = JSON.parse(response.body)
    json['url']
  end

end
