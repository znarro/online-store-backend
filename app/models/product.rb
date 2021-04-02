class Product < ApplicationRecord
  self.table_name = 'product'

  # Associations
  belongs_to :category, foreign_key: :category
end
