class AddModifierToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :modifier, :integer
  end
end
