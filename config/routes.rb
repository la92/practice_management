Rails.application.routes.draw do
  devise_for :doctors
  resources :medical_records
  resources :family_histories
  resources :notes
  resources :patients
  root to: 'patients#index'

  resources :patients do
    resources :notes
  end
  resources :patients do
    resources :medical_records
  end
  resources :patients do
    resources :family_histories
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
