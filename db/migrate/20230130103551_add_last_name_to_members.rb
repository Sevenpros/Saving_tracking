class AddLastNameToMembers < ActiveRecord::Migration[7.0]
  def change
    add_column :members, :last_name, :text
  end
end
