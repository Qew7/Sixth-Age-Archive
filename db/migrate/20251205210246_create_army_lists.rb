class CreateArmyLists < ActiveRecord::Migration[8.0]
  def change
    create_table :army_lists do |t|
      t.string :name
      t.references :army, null: false, foreign_key: true
      t.references :game_format, null: false, foreign_key: true
      t.integer :total_points
      t.text :notes

      t.timestamps
    end
  end
end
