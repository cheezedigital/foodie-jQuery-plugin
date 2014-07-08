Rails.application.routes.draw do
  resources :restaurants do
      resources :noms
  end
  resources :events
  root 'static#home'
  resources :noms
  get '/places' => 'static#places'
  get '/contact' => 'static#contact'
  post '/contact' => 'static#contact'

end
