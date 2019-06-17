Rails.application.routes.draw do

 root to:"courses#index"#, :as => :"Accueil"
 devise_for :users, :controllers => { registrations: 'registrations' }

  resources :courses do
  	resources :comments
  end




  resources :questions# a nettoyer apres
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
