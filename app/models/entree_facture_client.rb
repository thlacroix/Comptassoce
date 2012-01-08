class EntreeFactureClient < EntreeJournal
  belongs_to :journal_vente
	belongs_to :facture_emise
end
