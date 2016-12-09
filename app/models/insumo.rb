class Insumo < ApplicationRecord

	has_many :proveedor_insumo
	has_many :proveedor, through: :proveedor_insumo
end
