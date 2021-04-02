class ProductsController < ApplicationController
  def index
    @products = Product.all.sort_by { |product| product.category.id }
    render json: @products
  end
end
