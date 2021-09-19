class Category < ApplicationRecord
  belongs_to :idea, optional: true 
  validates :name, uniqueness: true
  validates :name, presence: true

end
