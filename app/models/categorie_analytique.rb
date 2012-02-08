class CategorieAnalytique < ActiveRecord::Base
  has_many :factures
  has_many :entree_journals

  #permet de renvoyer le nom et l'année ensemble (pour de l'affichage)
  def nom_annee
    "#{nom} #{annee}"
  end
end
