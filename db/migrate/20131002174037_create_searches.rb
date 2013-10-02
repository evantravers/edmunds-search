class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :vin
      t.text :attributes

      t.timestamps
    end
  end
end
