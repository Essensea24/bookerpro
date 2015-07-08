class SearchesController < ApplicationController
  
  def show
    @detail = ShowRemote.find(params[:hotelId], params[:options])
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
