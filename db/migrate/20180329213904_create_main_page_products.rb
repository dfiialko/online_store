class CreateMainPageProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :main_page_products do |t|
      t.boolean :new
      t.boolean :sale
      t.timestamps
    end
  end
end
