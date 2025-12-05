class AddBaseToUnits < ActiveRecord::Migration[8.0]
  def change
    add_column :units, :base_size, :string
  end
end
