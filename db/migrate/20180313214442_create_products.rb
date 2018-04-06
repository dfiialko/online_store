class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.references :category, foreign_key: true
      t.references :manufacturer, foreign_key: true
      t.string :title
      t.string :description
      t.string :url_key
      t.string :url_path
      t.decimal :price
      t.integer :qty
      t.string :articul
      t.string :units
      # t.string :manufacturer
      t.integer :packaging
      t.boolean :instock
      t.boolean :mainpage
      t.boolean :new
      t.boolean :sale
      t.timestamps
    end
  end
end
