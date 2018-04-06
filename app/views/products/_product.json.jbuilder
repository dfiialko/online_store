json.extract! product, :id, :name, :category_id, :title, :description, :url_key, :url_path, :price, :qty, :articul, :units, :packaging, :instock, :created_at, :updated_at
json.url product_url(product, format: :json)
