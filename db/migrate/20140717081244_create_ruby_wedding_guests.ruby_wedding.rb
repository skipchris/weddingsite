# This migration comes from ruby_wedding (originally 20140621210448)
class CreateRubyWeddingGuests < ActiveRecord::Migration
  def change
    create_table :ruby_wedding_guests do |t|
      t.string :firstname
      t.string :surname

      t.timestamps
    end
  end
end
