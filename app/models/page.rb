class Page < ApplicationRecord
  extend FriendlyId
  friendly_id :page_url, use: [:finders]
  validates :page_url, presence: true
end
