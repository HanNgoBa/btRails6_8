# frozen_string_literal: true

class Category < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :inventories
  has_many :products, through: :inventories

  before_save :capitalize_name

  private

  def capitalize_name
    self.name = name.capitalize
  end
end
