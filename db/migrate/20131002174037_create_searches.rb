class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :vin
      t.text :vehicle_attributes

      t.timestamps
    end
  end
end
