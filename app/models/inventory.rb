# frozen_string_literal: true

class Inventory < ApplicationRecord
  belongs_to :product
  belongs_to :category

  scope :product_in_category, lambda { |category_id|
    joins(:category).where(categories: { id: category_id }).map(&:product)
  }
end
