class CreateEntreeJournals < ActiveRecord::Migration
  def change
    create_table :entree_journals do |t|
      t.string :libelle
      t.date :date
      t.boolean :valide
      t.references :entree_journal
      t.float :debit
      t.float :credit
      t.string :moyen
      t.references :journal
      t.references :facture

      t.timestamps
    end
    add_index :entree_journals, :entree_journal_id
    add_index :entree_journals, :journal_id
    add_index :entree_journals, :facture_id
  end
end
