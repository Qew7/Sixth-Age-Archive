class CreateArmyListUnits < ActiveRecord::Migration[8.0]
  def change
    create_table :army_list_units do |t|
      t.references :army_list, null: false, foreign_key: true
      t.references :unit, null: false, foreign_key: true
      t.integer :quantity
      t.jsonb :upgrades_selected
      t.integer :calculated_cost

      t.timestamps
    end
  end
end
