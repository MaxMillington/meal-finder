class Location < ActiveRecord::Base

  geocoded_by :address
  a   fter_validation :geocode
  acts_as_gmappable

  def gmaps4rails_address
    address
  end

end
