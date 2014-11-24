class House < ActiveRecord::Base
  attr_accessible :address, :price

  has_many :scores

  #def totalscore(@house)
  #  totaled_score = 0
  #  @house.scores.each do |score|
  #    totaled_score = totaled_score + score.score
  #  end
  #  return totaled_score
  #end

end
