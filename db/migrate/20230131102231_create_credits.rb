class CreateCredits < ActiveRecord::Migration[7.0]
  def change
    create_table :credits do |t|
      t.decimal :amount
      t.decimal :interest
      t.string :status
      t.datetime :pay_date

      t.timestamps
    end
  end
end
