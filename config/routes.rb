Rails.application.routes.draw do
  resources :appointments
  resources :doctors
  root 'home#index'
  devise_for :users, controllers: {
        registrations: 'users/registrations'
      }

end
