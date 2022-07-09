class ProductsController < ApplicationController

  def index
    @product_count = Product.total_product_count
  end
  
  end