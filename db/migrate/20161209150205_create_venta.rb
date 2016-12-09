class CreateVenta < ActiveRecord::Migration[5.0]
  def change
    create_table :venta do |t|
      t.integer :numero
      t.string :tipo
      t.integer :subtotal
      t.integer :iva
      t.integer :propina
      t.integer :total
      t.string :fecha
      t.references :pedido, foreign_key: true

      t.timestamps
    end
  end
end
