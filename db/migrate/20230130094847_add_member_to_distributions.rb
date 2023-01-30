class AddMemberToDistributions < ActiveRecord::Migration[7.0]
  def change
    add_reference :distributions, :member, null: false, foreign_key: true
  end
end
