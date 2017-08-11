Rails.application.routes.draw do
  resources :cocktails, except: [:destroy] do
    resources :doses, only: [:create, :destroy]
  end

  resources :ingredients, only: [:show]

  root "cocktails#index"

  # get "cocktails", to: "cocktails#index"
  # get "cocktails/:id", to: "cocktails#show"
  # get "cocktails/new", to: "cocktails#new"
  # post "cocktails", to: "cocktails#create"
  # get "cocktails/:id/edit", to: "cocktails#edit"
  # patch "cocktails/:id", to: "cocktails#update"
  # delete "cocktails/:id", to: "cocktails#destroy"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
