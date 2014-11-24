class House < ActiveRecord::Base
				attr_accessible :address, :price

        has_many :scores
end
