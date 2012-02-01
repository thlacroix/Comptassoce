class Facture < ActiveRecord::Base
	belongs_to :categorie_comptable
	belongs_to :categorie_analytique
        belongs_to :tier
end
