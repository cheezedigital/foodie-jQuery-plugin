Rails.application.routes.draw do
  resources :restaurants do
      resources :noms
  end
  root 'static#home'
  resources :noms


end
