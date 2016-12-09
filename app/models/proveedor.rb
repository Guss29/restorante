class Proveedor < ApplicationRecord


	has_many :proveedor_insumo
	has_many :insumo, through: :proveedor_insumo
end
