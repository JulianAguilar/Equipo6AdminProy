Rails.application.routes.draw do
  get 'p_empleados/index'

	devise_for :empleados, controllers: {registrations: 'empleados/registrations', sessions: 'empleados/sessions'}
  # root 'welcome#index'
end
