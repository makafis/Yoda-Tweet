Rails.application.routes.draw do
  resources :users, :yoda_speaks
    get '/auth/:provider/callback', to: 'sessions#create'
    root 'users#index'
    delete '/logout', to: 'sessions#destroy'
end
