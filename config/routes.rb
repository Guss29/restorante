Rails.application.routes.draw do
  resources :venta
  resources :plato_pedidos
  resources :pedidos
  resources :insumo_platos
  resources :proveedor_insumos
  resources :mesas
  resources :empleados
  resources :platos
  resources :insumos
  resources :proveedors
  devise_for :users
  get 'welcome/index'

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
