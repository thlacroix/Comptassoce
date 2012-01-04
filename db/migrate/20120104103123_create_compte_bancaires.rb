class CreateCompteBancaires < ActiveRecord::Migration
  def change
    create_table :compte_bancaires do |t|
      t.string :banque
      t.string :nom
      t.string :iban
      t.string :bic
      t.string :proprietaire

      t.timestamps
    end
  end
end
