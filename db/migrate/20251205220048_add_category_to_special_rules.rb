class AddCategoryToSpecialRules < ActiveRecord::Migration[8.0]
  def change
    add_column :special_rules, :category, :string
  end
end
