class Number < ActiveRecord::Base
  include CacheInvalidator
  phony_normalize :phone_number, :default_country_code => 'US'

  validates :phone_number, presence: true
end
