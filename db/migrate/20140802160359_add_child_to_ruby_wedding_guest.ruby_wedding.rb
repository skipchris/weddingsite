# This migration comes from ruby_wedding (originally 20140802154740)
class AddChildToRubyWeddingGuest < ActiveRecord::Migration
  def change
    add_column :ruby_wedding_guests, :child, :boolean, null: false, default: false
  end
end
