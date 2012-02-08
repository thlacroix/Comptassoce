class Tier < ActiveRecord::Base
      belongs_to :categorie_comptable, :dependent => :destroy
end
