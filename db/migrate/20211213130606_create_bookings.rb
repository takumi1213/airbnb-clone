class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.references :user
      t.references :listing
      t.date :check_in_date
      t.date :check_out_date
      t.float :total_price
      t.float :price

      t.timestamps
    end
  end
end
