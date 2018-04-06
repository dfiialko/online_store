class CreateManufacturers < ActiveRecord::Migration[5.1]
  def change
    create_table :manufacturers do |t|
      t.string :name
      t.references :products, foreign_key: true
      t.references :categories, foreign_key: true
      t.timestamps
    end
  end
end
