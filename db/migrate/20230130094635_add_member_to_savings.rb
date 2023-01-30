class AddMemberToSavings < ActiveRecord::Migration[7.0]
  def change
    add_reference :savings, :member, null: false, foreign_key: true
  end
end
