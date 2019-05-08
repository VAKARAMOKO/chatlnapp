Rails.application.routes.draw do

  resources :courses
  devise_for :users, :controllers => { registrations: 'registrations' }
root to:"questions#index"

  resources :questions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
