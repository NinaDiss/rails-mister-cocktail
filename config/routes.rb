Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # A user can see the list of cocktails
  # get "/cocktails", to: "cocktails#index"

  # # A user can create a new cocktail
  # get "/cocktails/new", to: "cocktails#new"
  # post "/cocktails", to: "cocktails#create"

  # # A user can see the details of a given cocktail, with the dose needed for each ingredient.
  # get "/cocktails/:id", to: "cocktails#show", as: "cocktail"

  # # A user can add a new dose (ingredient/description pair) to an existing cocktail
  # # edit a cocktail
  # get 'cocktails/:id/edit', to: 'cocktails#edit', as: :edit_cocktail
  # # update a cocktail
  # patch 'cocktails/:id', to: 'cocktails#update'
  root to: "cocktails#index"

  resources :cocktails, only: [:index, :new, :create, :show] do
    resources :doses, only: [:new, :create]
  end

  resources :doses, only: [:destroy]

end
