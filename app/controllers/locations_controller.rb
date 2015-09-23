class LocationsController < ApplicationController
  def index
    def index
      @locations = Location.all
      @json = @locations.to_gmaps4rails do |location, marker|
        marker.infowindow render_to_string(:partial => "/locations/infowindow", :locals => { :location => location})
        marker.title "#{location.name}"
        marker.json({ :address => location.address})
      end
    end
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.new(location_params)

    if @location.save
      flash[:success] = "Location created."
      redirect_to locations_path
    else
      flash.now[:warning] = @location.errors.full_messages.join(". ")
      render :new
    end
  end


  def location_params
    params.require(:location)
        .permit(:name, :address, :latitude, :longitude)
  end
end
