class Insumo < ApplicationRecord

	has_many :proveedor_insumo
	has_many :proveedors, through: :proveedor_insumo
	has_many :insumo_plato
	has_many :platos, through: :insumo_plato
end
