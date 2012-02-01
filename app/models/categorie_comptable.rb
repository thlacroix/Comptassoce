class CategorieComptable < ActiveRecord::Base
  belongs_to :entree_journal
  has_many :tier
  has_many :facture
  has_one :compte_bancaire
  belongs_to :categorie_comptable
  has_many :categorie_comptables

  validates :numero, :uniqueness => true
  
  def parents
    parents = []
    parent = self
    while parent.niveau != 1
      parent = parent.categorie_comptable
      parents.push(parent)
    end
    return parents
  end

  def libelle
    case niveau
      when 1
        return "Classe"
      when 2
        return "Sous-classe"
      else
      return "Categorie comptable"
    end
  end

  def numero_nom
    "#{numero} - #{nom}"
  end

end
