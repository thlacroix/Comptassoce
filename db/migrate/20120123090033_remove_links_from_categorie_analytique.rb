class RemoveLinksFromCategorieAnalytique < ActiveRecord::Migration
  def up
    remove_column :categorie_analytiques, :facture_id
    remove_column :categorie_analytiques, :entree_journal_id
  end

  def down
    add_column :categorie_analytiques, :entree_journal_id, :int
    add_column :categorie_analytiques, :facture_id, :int
  end
end
