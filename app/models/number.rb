class Number < ActiveRecord::Base

  after_create :invalidate_cache
  after_destroy :invalidate_cache
  after_update :invalidate_cache

  phony_normalize :phone_number, :default_country_code => 'US'

  validates :phone_number, presence: true

  private

  def invalidate_cache
    Rails.cache.clear
  end
end
