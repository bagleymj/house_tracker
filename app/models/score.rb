class Score < ActiveRecord::Base
  attr_accessible :score

  belongs_to :house
  belongs_to :category
  
  def calculate_score(base_score)
    

  end
end
