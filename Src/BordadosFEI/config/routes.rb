Rails.application.routes.draw do	
  get 'mpagos/index'

	get 'mpagos/pagar/:id' => "mpagos#pagar", as: :pagar

  get 'mpagos/new/:id' => "mpagos#new", as: :realiza_pago

	get 'pclientes/creapedido'

  get 'pedidos/show/:id' => "pedidos#show", as: :muestra_pedido
	get 'pedidos/confirma/:id' => "pedidos#confirma", as: :confirma_pedido
  get 'pclientes/index'

  get 'pedidos/index'

	get 'mpagos/pagado' => "mpagos#pagado", as: :pagos_realizados

	get 'empleados/eliminar/:id' => "empleados#destroy", as: :elimina_empleado

  resources :mercancias

  devise_for :clientes, :controllers => { registrations: 'clientes/registrations' }
  resources :materiales

  resources :productos

  resources :proveedores

	devise_for :empleados,:controllers => { registrations: 'empleados/registrations' }

	authenticated :empleado do
  	root :to => "empleados#index", as: :empleado_root
	end
	authenticated :cliente do
		root :to => "pclientes#index", as: :cliente_root
	end
	resources :empleados
  root to: "welcome#index"
end
