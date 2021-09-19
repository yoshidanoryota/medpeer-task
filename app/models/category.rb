class Category < ApplicationRecord
  has_one :idea, optional: true 
  validates :name, uniqueness: true
  validates :name, presence: true

end
