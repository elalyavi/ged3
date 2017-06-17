class CreateItineraries < ActiveRecord::Migration
  def change
    create_table :itineraries do |t|
      t.string :name, null: false
      t.text :desc, null: false
      t.float :price, null: false
      t.references :city, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
