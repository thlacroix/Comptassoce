class CreateCategorieComptables < ActiveRecord::Migration
  def change
    create_table :categorie_comptables do |t|
      t.references :entree_journal
      t.references :tier
      t.references :facture
      t.references :compte_bancaire
      t.integer :numero
      t.references :categorie_comptable
      t.string :nom

      t.timestamps
    end
    add_index :categorie_comptables, :entree_journal_id
    add_index :categorie_comptables, :tier_id
    add_index :categorie_comptables, :facture_id
    add_index :categorie_comptables, :compte_bancaire_id
    add_index :categorie_comptables, :categorie_comptable_id
  end
end
