Rails.application.routes.draw do
	devise_for :empleados, controllers: {registrations: 'empleados/registrations', sessions: 'empleados/sessions'}
  # root 'welcome#index'
end
