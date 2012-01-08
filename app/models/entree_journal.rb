class EntreeJournal < ActiveRecord::Base
  belongs_to :entree_journal
	has_one :categorie_analytique
	has_one :categorie_comptable
	has_one :entree_journal
end
