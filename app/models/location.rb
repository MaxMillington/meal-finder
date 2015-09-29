class Location < ActiveRecord::Base
  include CacheInvalidator

  validates :name, :address, presence: true

  geocoded_by :address
  after_validation :geocode
  acts_as_gmappable

  def gmaps4rails_address
    address
  end

end
