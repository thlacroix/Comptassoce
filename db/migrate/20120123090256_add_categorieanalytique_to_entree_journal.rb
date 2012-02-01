class AddCategorieanalytiqueToEntreeJournal < ActiveRecord::Migration
  def change
    add_column :entree_journals, :categorie_analytique_id, :int
  end
end
