Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

<<<<<<< HEAD
  resources :restaurants do
    resources :reviews
  end

=======
  resources :restaurants
  resources :users
  
>>>>>>> 993aa0d2e8c469152c7cad6a6481ded247b1a481
  root 'restaurants#index'
  
end
