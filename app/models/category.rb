class Category < ActiveRecord::Base
				attr_accessible :name, :multiplier

        has_many :scores
end
