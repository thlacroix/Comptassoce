class Facture < ActiveRecord::Base
	has_one :categorie_comptable
	has_one :categorie_analytique
end
