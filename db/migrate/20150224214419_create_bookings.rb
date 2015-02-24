class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.date :start
      t.date :end
      t.belongs_to :guest, index: true
      t.belongs_to :flat, index: true

      t.timestamps null: false
    end
    add_foreign_key :bookings, :flats
  end
end
