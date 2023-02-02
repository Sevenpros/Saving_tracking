class AddMemberToCredits < ActiveRecord::Migration[7.0]
  def change
    add_reference :credits, :member, null: false, foreign_key: true
  end
end
