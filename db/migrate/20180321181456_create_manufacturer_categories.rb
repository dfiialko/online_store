class CreateManufacturerCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :manufacturer_categories do |t|
      t.references :category,foreign_key:true
      t.references :manufacturer,foreign_key:true
      t.timestamps
    end
  end
end
