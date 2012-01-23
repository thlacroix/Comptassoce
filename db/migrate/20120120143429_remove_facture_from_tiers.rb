class RemoveFactureFromTiers < ActiveRecord::Migration
  def up
    remove_column :tiers, :facture_id
  end

  def down
    add_column :tiers, :facture_id, :int
  end
end
