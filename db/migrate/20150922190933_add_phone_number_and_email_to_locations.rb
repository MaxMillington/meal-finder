class AddPhoneNumberAndEmailToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :phone_number, :string
    add_column :locations, :email, :string
  end
end
