class CategorieAnalytique < ActiveRecord::Base
  has_many :factures
  has_many :entree_journals

  def nom_annee
    "#{nom} #{annee}"
  end
end
