class AddFirstNameToMembers < ActiveRecord::Migration[7.0]
  def change
    add_column :members, :first_name, :text
  end
end
