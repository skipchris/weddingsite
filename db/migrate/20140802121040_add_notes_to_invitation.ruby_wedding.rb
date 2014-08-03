# This migration comes from ruby_wedding (originally 20140802114327)
class AddNotesToInvitation < ActiveRecord::Migration
  def change
    add_column :ruby_wedding_invitations, :notes, :string, limit: 2000
  end
end
