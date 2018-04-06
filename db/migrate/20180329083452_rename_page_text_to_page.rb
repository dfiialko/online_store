class RenamePageTextToPage < ActiveRecord::Migration[5.1]
  def change
    rename_table :page_texts, :pages
  end
end
