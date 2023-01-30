class CreateDistributions < ActiveRecord::Migration[7.0]
  def change
    create_table :distributions do |t|
      t.decimal :amount

      t.timestamps
    end
  end
end
