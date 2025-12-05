class CreateRulebooks < ActiveRecord::Migration[8.0]
  def change
    create_table :rulebooks do |t|
      t.string :title
      t.text :description
      t.string :category
      t.string :source
      t.string :cover_image_url

      t.timestamps
    end
  end
end
