class Plato < ApplicationRecord
	validates :nombre, presence: true
	validates :precio, presence: true
	validates :tipo, presence: true
	validates :descripcion, presence: true
	has_many :plato_pedido
	has_many :pedidos, through: :plato_pedido
	has_many :insumo_plato
	has_many :insumos, through: :insumo_plato
	after_create :save_insumos


	def insumos=(value)
		@insumos = value
	end


	private


	def save_insumos
		@insumos.each do |insumos_id|
			InsumoPlato.create(insumo_id: insumos_id,plato_id: self.id)
		end
	end
end
