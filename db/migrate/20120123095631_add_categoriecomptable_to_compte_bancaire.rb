class AddCategoriecomptableToCompteBancaire < ActiveRecord::Migration
  def change
    add_column :compte_bancaires, :categorie_comptable_id, :int
  end
end
