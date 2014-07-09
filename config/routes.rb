Rails.application.routes.draw do

  resources :restaurants do
      resources :noms
  end

  resources :noms, only: [] do
    resources :photos
  end
  resources :events

  root 'static#home'
  get '/places' => 'static#places'
  get '/contact' => 'static#contact'
  post '/contact' => 'static#contact'

  get '/login' => 'static#login'
  get '/report' => 'static#report'

end
