class AddTypeToFactures < ActiveRecord::Migration
  def change
    add_column :factures, :type, :string
  end
end
