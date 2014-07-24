# This migration comes from ruby_wedding (originally 20140723204251)
class AddInvitationToRubyWeddingGuests < ActiveRecord::Migration
  def change
    add_reference :ruby_wedding_guests, :invitation, index: true
    drop_table 'ruby_wedding_invitations_ruby_wedding_guests'
  end
end
