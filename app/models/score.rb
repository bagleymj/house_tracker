class Score < ActiveRecord::Base
  attr_accessible :score

  belongs_to :house
  belongs_to :category
end
