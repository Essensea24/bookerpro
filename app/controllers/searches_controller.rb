class SearchesController < ApplicationController

  # def index
  #   @searches = Search.paginate(:page => params[:page], :per_page => 7)
  # end
  
  def show
    response = ShowRemote.find(params[:hotelId], params[:options])
    @detail = response["HotelInformationResponse"]
    @room_responses = []
    abc = []
    
    @shovel = RoomAvail.find(params[:hotelId], params[:arrivalDate],params[:departureDate], abc)["HotelRoomAvailabilityResponse"]
    if @shovel["HotelRoomResponse"].instance_of? Hash 
      @room_responses << @shovel["HotelRoomResponse"]
    elsif @shovel["HotelRoomResponse"].instance_of? Array
      @room_responses = @shovel["HotelRoomResponse"]
    end
  

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
