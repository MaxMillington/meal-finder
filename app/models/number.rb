class Number < ActiveRecord::Base
  validates :phone_number, presence: true
end
