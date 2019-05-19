Rails.application.routes.draw do
  root to: 'cocktails#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails , only: [:index, :new, :create, :show ] do
    # to create a new dose I need cocktail id => nested
    resources :doses, only: [:new ,:create]
  end
  resources :doses, only: [:delete]

  # route to: 'cocktails#index'
end
