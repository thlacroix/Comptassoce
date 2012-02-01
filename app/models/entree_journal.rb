class EntreeJournal < ActiveRecord::Base
  belongs_to :entree_journal
  belongs_to :categorie_analytique
  belongs_to :categorie_comptable
  has_one :entree_journal
end
