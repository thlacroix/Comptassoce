class AddCategoriecomptableToFacture < ActiveRecord::Migration
  def change
    add_column :factures, :categorie_comptable_id, :int
  end
end
