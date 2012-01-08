class CompteBancaire < ActiveRecord::Base
	has_many :journals
	has_many :journal_has
	has_many :journal_ventes
	has_many :journal_ods
	has_many :journal_banques
	has_one :categorie_comptable
end
