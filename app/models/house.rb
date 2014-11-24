class House < ActiveRecord::Base
  attr_accessible :address, :price

  has_many :scores

  def totalscore(id)
    totaled_score = 0
    sum_house = House.find(id)
    sum_house.scores.each do |score|
      totaled_score = totaled_score + score.score
    end
    return totaled_score
  end

end
