class CreateNumbers < ActiveRecord::Migration
  def change
    create_table :numbers do |t|
      t.string :phone_number
      t.string :email

      t.timestamps null: false
    end
  end
end
