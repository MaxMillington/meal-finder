class AddDaysToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :monday, :string
    add_column :locations, :tuesday, :string
    add_column :locations, :wednesday, :string
    add_column :locations, :thursday, :string
    add_column :locations, :friday, :string
    add_column :locations, :saturday, :string
    add_column :locations, :sunday, :string
  end
end
