class SearchesController < ApplicationController
  
  def show
    response = ShowRemote.find(params[:hotelId], params[:options])
    @detail = response["HotelInformationResponse"]
    @images = RoomImage.find(params[:hotelId])

  end

  def new
    response = RemoteHotel.find(params[:destinationString], params[:arrivalDate], params[:departureDate])
    @hotels = response["HotelListResponse"]["HotelList"]["HotelSummary"]
    respond_to do |format|
      format.html {
        render
      }
      format.json {
        render json: @hotels
      }
     end
  end

  def create

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
