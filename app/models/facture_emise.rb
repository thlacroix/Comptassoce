class FactureEmise < Facture
	has_many :entree_facture_clients
	belongs_to :client
end
