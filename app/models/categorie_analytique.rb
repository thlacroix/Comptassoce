class CategorieAnalytique < ActiveRecord::Base
  belongs_to :facture
  belongs_to :entree_journal
end
