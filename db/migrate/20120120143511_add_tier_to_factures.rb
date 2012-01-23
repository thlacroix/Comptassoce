class AddTierToFactures < ActiveRecord::Migration
  def change
    add_column :factures, :tier_id, :int
  end
end
