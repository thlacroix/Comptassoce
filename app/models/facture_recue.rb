class FactureRecue < Facture
	has_many :entree_facture_fournisseurs
	belongs_to :fournisseur
end
