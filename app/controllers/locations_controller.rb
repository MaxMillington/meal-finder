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

  def show
    @location = Location.find(params[:id])
    @json = @location.to_gmaps4rails
  end

  def create
    @location = Location.new(location_params)
    if @location.save
      flash[:success] = "Location created."
      redirect_to admin_dashboard_path
    else
      flash.now[:warning] = @location.errors.full_messages.join(". ")
      render :new
    end
  end

  def destroy
    @location = Location.find(params[:id])
    @location.delete
    redirect_to admin_dashboard_path
  end

  def edit
    if current_user
      @location = Location.find(params[:id])
    else
      redirect_to root_path
      flash[:error] = "Only the site administrator can update the information for a location."
    end

  end

  def update
    @location = Location.find(params[:id])
    if current_user
      if @location.update(name: params[:location][:name],
                          address: params[:location][:address],
                          phone_number: params[:location][:phone_number],
                          email:  params[:location][:email],
                          description: params[:location][:description])
        redirect_to admin_dashboard_path
        flash[:success] = "Location updated!"
      else
        flash[:error] = "Invalid input - Please try updating trip again"
        render :edit
      end
    else
      flash[:error] = "Only the site administrator can update the information for a location."
    end
  end

  private

  def location_params
    params.require(:location)
        .permit(:name, :address, :latitude, :longitude, :description, :email,
                :phone_number, :monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :sunday)
  end

end
