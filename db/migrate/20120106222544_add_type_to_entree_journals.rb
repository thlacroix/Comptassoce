class AddTypeToEntreeJournals < ActiveRecord::Migration
  def change
    add_column :entree_journals, :type, :string
  end
end
