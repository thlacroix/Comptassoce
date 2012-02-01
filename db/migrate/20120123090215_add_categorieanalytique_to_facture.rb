class AddCategorieanalytiqueToFacture < ActiveRecord::Migration
  def change
    add_column :factures, :categorie_analytique_id, :int
  end
end
