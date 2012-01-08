class EntreeFactureFournisseur < EntreeJournal
  belongs_to :journal_ha
	belongs_to :facture_recue
end
