Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'about#index'

  resources :plants, only: [:index, :show]

  resources :about, only: [:index]

  resources :resources, only: [:index]

  resources :contact, only: [:index]
  match '/send_mail', to: 'contact#send_mail', via: 'post'

end
