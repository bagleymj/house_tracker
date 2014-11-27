class AddBaseScoreFieldToScores < ActiveRecord::Migration
  def change
    add_column :scores, :base_score, :decimal
  end
end
