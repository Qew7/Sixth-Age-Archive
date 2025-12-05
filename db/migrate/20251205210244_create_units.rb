class CreateUnits < ActiveRecord::Migration[8.0]
  def change
    create_table :units do |t|
      t.references :army, null: false, foreign_key: true
      t.string :name
      t.string :unit_type
      t.integer :base_cost
      t.integer :min_size
      t.integer :max_size
      t.integer :cost_per_model
      t.jsonb :stats
      t.text :special_rules
      t.jsonb :equipment
      t.jsonb :upgrades

      t.timestamps
    end
  end
end
