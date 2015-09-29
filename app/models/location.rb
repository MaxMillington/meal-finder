class Location < ActiveRecord::Base


  after_create :invalidate_cache
  after_destroy :invalidate_cache
  after_update :invalidate_cache

  validates :name, :address, presence: true

  geocoded_by :address
  after_validation :geocode
  acts_as_gmappable

  def gmaps4rails_address
    address
  end

  private

  def invalidate_cache
    Rails.cache.clear
  end

end
