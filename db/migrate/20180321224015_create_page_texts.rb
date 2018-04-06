class CreatePageTexts < ActiveRecord::Migration[5.1]
  def change
    create_table :page_texts do |t|
      t.string :page_url
      t.text :info

      t.timestamps
    end
  end
end
