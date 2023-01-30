class AddGroupToDistributions < ActiveRecord::Migration[7.0]
  def change
    add_reference :distributions, :group, null: false, foreign_key: true
  end
end
