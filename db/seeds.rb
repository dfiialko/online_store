require 'smarter_csv'
require 'rails'

ManufacturerCategory.delete_all
Product.destroy_all
Category.destroy_all
Manufacturer.destroy_all

csv_file = Rails.root + "db/kanz.csv"
options = {file_encoding: 'utf-8',
           key_mapping: {name: :name,title: :meta_title,url_key: :url_key,url_path: :url_path,
                         price: :price, description: :short_description, qty: :qty, manufacturer: :manufacturer,
                         units: :units, instock: :is_in_stock}}
products = SmarterCSV.process(csv_file,options)

# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

Product.transaction do
  products.each do |product_info|
    category_name = product_info[:categories]
    product = product_info[:name]
    product_price = product_info[:price]
    product_quantity = product_info[:qty]
    product_manufacturer = product_info[:manufacturer]
      category_name = category_name.encode('windows-1251')
      category = Category.find_or_create_by(name: category_name)
      manufacturer = Manufacturer.find_or_create_by(name:product_manufacturer)
       puts Manufacturer.last.name
    @product = Product.new(name: product,price: product_price, qty: product_quantity)
    @product.category = category
    @product.manufacturer = manufacturer
    @product.save
    ManufacturerCategory.find_or_create_by(manufacturer: manufacturer, category: category)
  end
end

Page.create(page_url: 'about', info: 'Today "Globus" is the largest company in the region. Specialized retail store, developed wholesale trade, service department of customer service - all these three main areas of our activity work efficiently and successfully develop, thanks to the work of highly skilled specialists.
Organization of timely delivery of goods, operational information support, providing promotional materials - all this is clearly a sign of quality customer service. Due to a thorough analysis of sales in the wholesale and retail networks, among the many different products were selected the best, which are most in demand among buyers.
' )
