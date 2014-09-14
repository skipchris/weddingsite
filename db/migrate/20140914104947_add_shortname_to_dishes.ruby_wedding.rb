# This migration comes from ruby_wedding (originally 20140914104529)
class AddShortnameToDishes < ActiveRecord::Migration
  def change
    add_column :ruby_wedding_dishes, :shortname, :string, limit: 20
  end
end
