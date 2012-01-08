class CreateTiers < ActiveRecord::Migration
  def change
    create_table :tiers do |t|
      t.string :nom
      t.string :mail
      t.string :adresse
      t.string :ville
      t.integer :cp
      t.integer :tel
      t.text :description
      t.string :iban
      t.string :bic
      t.references :facture

      t.timestamps
    end
    add_index :tiers, :facture_id
  end
end
