class Category < ApplicationRecord
  has_one :idea
  validates :name, uniqueness: true
end
