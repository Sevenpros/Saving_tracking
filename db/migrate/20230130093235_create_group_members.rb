class CreateGroupMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :groups_members do |t|

      t.timestamps
    end
  end
end
