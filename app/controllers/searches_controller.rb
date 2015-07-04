class SearchesController < ApplicationController
  
  def show
  end

  def new
    response = RemoteHotel.find(params[:destinationString], params[:arrivalDate], params[:departureDate])
    @hotels = response["HotelListResponse"]["HotelList"]["HotelSummary"]
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
