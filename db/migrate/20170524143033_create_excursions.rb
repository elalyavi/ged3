class CreateExcursions < ActiveRecord::Migration
  def change
    create_table :excursions do |t|
      t.string :name, null: false
      t.text :describe, null: false
      t.float :price, null: false
      t.references :city, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
