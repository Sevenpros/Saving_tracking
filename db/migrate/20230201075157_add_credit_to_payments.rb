class AddCreditToPayments < ActiveRecord::Migration[7.0]
  def change
    add_reference :payments, :credit, null: false, foreign_key: true
  end
end
