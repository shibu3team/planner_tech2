Rails.application.routes.draw do
  root 'users#new'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources 'users'
  resources 'spots'
  resources 'plans'
  resources 'plan_spot'  
  get    '/users/:id/edit/password', to: 'passwords#edit'
  get    '/plans/:plan_id/spot/new', to: 'spots#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
