Rails.application.routes.draw do
  resources :medical_records
  resources :family_histories
  resources :notes
  resources :patients
  
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
