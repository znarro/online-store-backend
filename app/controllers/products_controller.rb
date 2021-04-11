class ProductsController < ApplicationController
  def index
    if params[:category_id]
      category = Category.find(params[:category_id])
      @products = category.products
    else
      @products = filter_by_name(Product.all)
    end

    render json: @products
  end

  private

  def filter_by_name(products)
    products.where('name LIKE ?', "%#{params[:q]}%").order(category: :asc)
  end
end
