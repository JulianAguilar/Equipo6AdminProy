Rails.application.routes.draw do	

  resources :productos

  resources :proveedores

	devise_for :empleados
	authenticated :empleado do
  	root :to => "empleados#index", as: :empleado_root
	end
	resources :empleados
  root to: "welcome#index"
end
