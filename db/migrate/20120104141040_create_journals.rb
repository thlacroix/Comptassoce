class CreateJournals < ActiveRecord::Migration
  def change
    create_table :journals do |t|
      t.string :nom
      t.string :type
      t.references :compte_bancaire

      t.timestamps
    end
    add_index :journals, :compte_bancaire_id
  end
end
