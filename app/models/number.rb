class Number < ActiveRecord::Base
  include CacheInvalidator
  validates :phone_number, presence: true
end
