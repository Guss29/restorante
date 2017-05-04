class Insumo < ApplicationRecord

	has_many :proveedor_insumo
	has_many :proveedors, through: :proveedor_insumo
	has_many :insumo_plato
	has_many :platos, through: :insumo_plato
	#Validacion nombre no null
	validates :nombre , presence: { message: "no debe estar vacio"} , confirmation: true
    #Validacion nombre solo letras
    validates :nombre, format: { with: /\A[a-zA-Z]+\z/,
    message: "Solo se aceptan letras" }
    #Validacion tamaño del nombre
    validates :nombre, length: { minimum: 2 }
    validates :nombre, length: { maximum: 50 }
	validates :cantidad , presence: { message: "telefono no debe estar vacio"} , confirmation: true
    #Validacion telefono solo numeros
    validates :cantidad, format: { with: /\A[0-9]+\z/, message: "Solo se aceptan numeros" }
    #Validacion telefono maximo 11 digitos
    validates :cantidad, length: { maximum: 11 }
end
