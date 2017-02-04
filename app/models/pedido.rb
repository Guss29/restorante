class Pedido < ApplicationRecord
  belongs_to :empleado
  has_many :plato_pedido
  has_many :platos, through: :plato_pedido
end
