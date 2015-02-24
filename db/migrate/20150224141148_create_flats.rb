class CreateFlats < ActiveRecord::Migration
  def change
    create_table :flats do |t|
      t.string :name
      t.text :description
      t.belongs_to :owner
      t.string :city
      t.string :address

      t.timestamps null: false
    end
  end
end
