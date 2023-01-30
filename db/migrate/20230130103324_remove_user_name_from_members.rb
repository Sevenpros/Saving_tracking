class RemoveUserNameFromMembers < ActiveRecord::Migration[7.0]
  def change
    remove_column :members, :username, :string
  end
end
