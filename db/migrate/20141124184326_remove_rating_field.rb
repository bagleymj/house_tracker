class RemoveRatingField < ActiveRecord::Migration
  def change
    remove_column :categories, :rating
  end
end
