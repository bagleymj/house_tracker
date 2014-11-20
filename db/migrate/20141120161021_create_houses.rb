class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.string :address
      t.decimal :price

      t.timestamps
    end
  end
end
