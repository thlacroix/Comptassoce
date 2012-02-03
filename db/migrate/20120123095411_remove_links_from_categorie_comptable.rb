class RemoveLinksFromCategorieComptable < ActiveRecord::Migration
  def up
    remove_column :categorie_comptables, :tier_id
    remove_column :categorie_comptables, :facture_id
    remove_column :categorie_comptables, :compte_bancaire_id
  end

  def down
    add_column :categorie_comptables, :tier_id, :int
    add_column :categorie_comptables, :compte_bancaire_id, :int
    add_column :categorie_comptables, :facture_id, :int
  end
end
