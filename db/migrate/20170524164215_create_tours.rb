class CreateTours < ActiveRecord::Migration
  def change
    create_table :tours do |t|
      t.datetime :departure_date, null: false
      t.integer :count_days, null: false
      t.float :add_payment, null: false
      t.string :add_desc, null: false
      t.references :itinerary, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
