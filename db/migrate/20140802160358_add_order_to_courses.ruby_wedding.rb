# This migration comes from ruby_wedding (originally 20140802152203)
class AddOrderToCourses < ActiveRecord::Migration
  def change
    add_column :ruby_wedding_courses, :order, :integer, null: false, default: 0
  end
end
