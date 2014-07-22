# This migration comes from ruby_wedding (originally 20140717204954)
class AddRsvpToRubyWeddingGuests < ActiveRecord::Migration
  def change
    add_column :ruby_wedding_guests, :rsvp, :boolean
  end
end
