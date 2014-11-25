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
    end
    redirect_to houses_path

  end

end
