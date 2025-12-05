class CreateArmies < ActiveRecord::Migration[8.0]
  def change
    create_table :armies do |t|
      t.string :name
      t.text :description
      t.string :source
      t.string :book_cover_url

      t.timestamps
    end
  end
end
