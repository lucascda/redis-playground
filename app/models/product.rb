class Product < ApplicationRecord
  belongs_to :category

  def self.total_product_count
    total_count = Rails.cache.redis.get('total_product_count')
    if total_count.nil?
      total_count = Product.count
      Rails.cache.redis.set('total_product_count', total_count)
    end
    total_count
  end
end
