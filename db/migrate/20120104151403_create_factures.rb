class CreateFactures < ActiveRecord::Migration
  def change
    create_table :factures do |t|
      t.float :montant_ht
      t.float :montant_ttc
      t.float :tva
      t.date :date
      t.string :reference
      t.string :libelle

      t.timestamps
    end
  end
end
