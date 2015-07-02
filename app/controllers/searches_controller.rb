class SearchesController < ApplicationController
  require 'search'
  
  def show
  end

  def new
  	# body = 
   #  { "city" => "Seattle",
   #    "stateProvinceCode" => "WA",
   #    "countryCode" => "US",
   #    "arrivalDate" => "8/1/2015",
   #    "departureDate" => "8/3/2015",
   #    "RoomGroup" => 
   #    						{ 
   #                "Room" =>
   #                      {
   #                      "numberOfAdults" => 2
   #                      }
   #                },
   #    "numberOfResults" => 25
   #  }


   #  headers = 
   #  { 
   #    "cid"=> "55505",
   #    "minorRev"=> "99",
   #    "apiKey"=> "cbrzfta369qwyrm9t5b8y8kf",
   #    "locale" => "en_US", 
   #    "curencyCode" => "USD"
   #  }
    # @response =
    # HTTParty.get("http://api.ean.com/ean-services/rs/hotel/v3/list?",
    # headers => headers, body => body)
    
    # @response =
    # HTTParty.get("https://book.api.ean.com/ean-services/rs/hotel/v3/list?cid=55505&minorRev=99&apiKey=cbrzfta369qwyrm9t5b8y8kf&locale=en_US&currencyCode=USD&xml=%3CHotelListRequest%3E%0A%20%20%20%20%3Ccity%3ESeattle%3C%2Fcity%3E%0A%20%20%20%20%3CstateProvinceCode%3EWA%3C%2FstateProvinceCode%3E%0A%20%20%20%20%3CcountryCode%3EUS%3C%2FcountryCode%3E%0A%20%20%20%20%3CarrivalDate%3E8%2F1%2F2015%3C%2FarrivalDate%3E%0A%20%20%20%20%3CdepartureDate%3E8%2F3%2F2015%3C%2FdepartureDate%3E%0A%20%20%20%20%3CRoomGroup%3E%0A%20%20%20%20%20%20%20%20%3CRoom%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%3CnumberOfAdults%3E2%3C%2FnumberOfAdults%3E%0A%20%20%20%20%20%20%20%20%3C%2FRoom%3E%0A%20%20%20%20%3C%2FRoomGroup%3E%0A%20%20%20%20%3CnumberOfResults%3E25%3C%2FnumberOfResults%3E%0A%3C%2FHotelListRequest%3E")

    @response = RemoteHotel.find
  end

  def create
    api = Search.new()
    url = api.unique_url

  end


  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
