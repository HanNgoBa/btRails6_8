# frozen_string_literal: true

namespace :add_db do
  desc 'TODO'
  task product: :environment do
    (6..10).each do |i|
      Product.new(name: "mat hang #{i}", price: 10_000 * i).save
    end
  end

  desc 'TODO'
  task inventory: :environment do
    2.times do
      Inventory.new(stock: rand(10..30), product_id: rand(1..6), category_id: rand(1..3)).save
    end
  end

  desc 'TODO'
  task category: :environment do
    3.times do |i|
      Category.new(name: "loai #{i}").save
    end
  end
end
