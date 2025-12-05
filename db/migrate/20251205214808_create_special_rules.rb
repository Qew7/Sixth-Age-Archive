class CreateSpecialRules < ActiveRecord::Migration[8.0]
  def change
    create_table :special_rules do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
