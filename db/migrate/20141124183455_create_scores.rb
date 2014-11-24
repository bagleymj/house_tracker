class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.belongs_to :house
      t.belongs_to :category
      t.integer :score

      t.timestamps
    end
  end
end
