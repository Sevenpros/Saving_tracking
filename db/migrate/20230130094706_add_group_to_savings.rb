class AddGroupToSavings < ActiveRecord::Migration[7.0]
  def change
    add_reference :savings, :group, null: false, foreign_key: true
  end
end
