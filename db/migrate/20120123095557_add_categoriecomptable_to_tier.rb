class AddCategoriecomptableToTier < ActiveRecord::Migration
  def change
    add_column :tiers, :categorie_comptable_id, :int
  end
end
