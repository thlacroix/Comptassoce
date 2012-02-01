class AddCategoriecomptableToEntreeJournal < ActiveRecord::Migration
  def change
    add_column :entree_journals, :categorie_comptable_id, :int
  end
end
