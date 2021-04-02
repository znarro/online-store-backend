class ProductsController < ApplicationController
  def index
    @products = params[:q] ? Product.where('name LIKE ?', "%#{params[:q]}%") : Product.all

    render json: @products.order(category: :asc)
  end
end
