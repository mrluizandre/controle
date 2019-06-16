Rails.application.routes.draw do
  resources :settings
  resources :transactions
  resources :products do
  	collection do
  		get :to_buy
  	end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'products#index'
end
