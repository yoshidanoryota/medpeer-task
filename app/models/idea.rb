class Idea < ApplicationRecord
  has_one :category
  validates :body, presence: true
  validates :category_id, presence: true
end
