class FactureEmise < Facture
	has_many :entree_facture_clients
	has_one :client
end
