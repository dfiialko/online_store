class ManufacturerCategory < ApplicationRecord
  belongs_to :category, dependent: :destroy
  belongs_to :manufacturer, dependent: :destroy
end
