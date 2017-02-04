class Plato < ApplicationRecord
	has_many :insumo_plato
	has_many :insumos, through: :insumo_plato
	has_many :plato_pedido
	has_many :pedidos, through: :plato_pedido
end
