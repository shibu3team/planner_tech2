Rails.application.routes.draw do
  root 'users#new'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources 'users'
  resources 'spots'

  resources :plans do
    resources :spots
  end

  get    '/users/:id/edit/password', to: 'passwords#edit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
