class FactureRecue < Facture
	has_many :entree_facture_fournisseurs
	has_one :fournisseur
end
