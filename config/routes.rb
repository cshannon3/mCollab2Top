Rails.application.routes.draw do
  resources :entries
  get "/auth/:provider/callback", to: "sessions#create"
  get 'auth/failure', to: redirect('/')
  delete 'signout', to: 'sessions#destroy', as: 'signout'
  
  root to: 'sessions#new'
  
  resources :challenges do
    resources :entries
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
