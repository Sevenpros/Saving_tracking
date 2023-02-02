class AddMemberToPayments < ActiveRecord::Migration[7.0]
  def change
    add_reference :payments, :member, null: false, foreign_key: true
  end
end
