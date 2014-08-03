# This migration comes from ruby_wedding (originally 20140803185423)
class AddVegetarianToRubyWeddingDishes < ActiveRecord::Migration
  def change
    add_column :ruby_wedding_dishes, :vegetarian, :boolean, default: false
  end
end
