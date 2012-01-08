class CategorieComptable < ActiveRecord::Base
  belongs_to :entree_journal
  belongs_to :tier
  belongs_to :facture
  belongs_to :compte_bancaire
  belongs_to :categorie_comptable
	has_many :categorie_comptable
end
