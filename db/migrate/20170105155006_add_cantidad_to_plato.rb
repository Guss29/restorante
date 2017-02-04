class AddCantidadToPlato < ActiveRecord::Migration[5.0]
  def change
    add_column :platos, :cantidad, :integer
  end
end
