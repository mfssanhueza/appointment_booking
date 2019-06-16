Rails.application.routes.draw do
  resources :appointments
  resources :doctors do
    post 'doctor_specialties/:id/create', to: 'doctor_specialties#create', as: 'add_specialty'
    get 'doctor_specialties/new', to:'doctor_specialties#new', as: 'new_specialty'
    delete 'doctor_specialties/:id/destroy', to: 'doctor_specialties#destroy', as: 'remove/specialty'
  end
  root 'home#index'
  devise_for :users, controllers: {
        registrations: 'users/registrations'
      }

end
