class CreateListings < ActiveRecord::Migration[6.1]
  def change
    create_table :listings do |t|
      t.string :listing_name
      t.text :listing_description
      t.string :home_type
      t.string :room_type
      t.integer :accomodate
      t.integer :bedroom_count
      t.integer :bathroom_count
      t.float :price
      t.boolean :has_internet
      t.boolean :has_tv
      t.boolean :has_kitchen
      t.boolean :has_heating
      t.boolean :has_air_conditioner
      t.string :address
      t.boolean :is_active

      t.timestamps
    end
  end
end
