# This migration comes from ruby_wedding (originally 20140722204622)
class AddCourseIdToMenuChoices < ActiveRecord::Migration
  def change
    add_column :ruby_wedding_menu_choices, :course_id, :integer
  end
end
