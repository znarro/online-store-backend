class ProductsController < ApplicationController
  def index
    @products = filter(Product.all)
    render json: @products
  end

  private

  def filter(products)
    products.where('name LIKE ?', "%#{params[:q]}%").order(category: :asc)
  end
end
