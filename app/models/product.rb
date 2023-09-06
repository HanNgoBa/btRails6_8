# frozen_string_literal: true

class Product < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true

  has_many :inventories
  has_many :categories, through: :inventories

  def check_product
    inventories.sum(:stock) < 5 ? update(out_of_stock: true) : update(out_of_stock: false)
  end
end
