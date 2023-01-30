class CreateSavings < ActiveRecord::Migration[7.0]
  def change
    create_table :savings do |t|
      t.decimal :amount

      t.timestamps
    end
  end
end
