# This migration comes from ruby_wedding (originally 20140621211710)
class CreateRubyWeddingInvitations < ActiveRecord::Migration
  def change
    create_table :ruby_wedding_invitations do |t|

      t.timestamps
    end

    create_table :ruby_wedding_invitations_ruby_wedding_guests do |t|
      t.references :invitation, null: false
      t.references :guest, null: false
    end

  end
end
