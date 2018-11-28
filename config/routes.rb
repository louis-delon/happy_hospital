Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :workers, only: [ :new, :create, :edit, :update ] do
    resources :shifts, only: [ :new, :create ]
  end
  resources :shifts, only: [ :index ]
end
