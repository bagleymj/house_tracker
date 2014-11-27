class ScoresController < ApplicationController
  def score_house
    @house = House.find(params[:id])
    @scores = @house.scores
  end
  def update
    @scores = params[:scores]
    @scores.each do |score|
      old_score = Score.find(score[0])
      old_score.update_attributes(score[1])
      calculate_score(old_score.base_score)
    end
    redirect_to houses_path

  end

end
