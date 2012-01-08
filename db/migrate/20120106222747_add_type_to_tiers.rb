class AddTypeToTiers < ActiveRecord::Migration
  def change
    add_column :tiers, :type, :string
  end
end
