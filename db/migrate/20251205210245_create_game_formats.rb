class CreateGameFormats < ActiveRecord::Migration[8.0]
  def change
    create_table :game_formats do |t|
      t.string :name
      t.integer :points_limit
      t.jsonb :restrictions

      t.timestamps
    end
  end
end
