class CreateCategorieAnalytiques < ActiveRecord::Migration
  def change
    create_table :categorie_analytiques do |t|
      t.string :nom
      t.integer :annee
      t.references :facture
      t.references :entree_journal

      t.timestamps
    end
    add_index :categorie_analytiques, :facture_id
    add_index :categorie_analytiques, :entree_journal_id
  end
end
