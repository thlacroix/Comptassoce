class AddNiveauToCategorieComptable < ActiveRecord::Migration
  def change
    add_column :categorie_comptables, :niveau, :int
  end
end
