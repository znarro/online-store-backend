class Category < ApplicationRecord
  self.table_name = 'category'

  # Associations
  has_many :products, foreign_key: :category
end
