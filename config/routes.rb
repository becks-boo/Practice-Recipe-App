Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "pages#home"
  resources :recipes
  # Do all recipes routes individually
  #      Prefix Verb   URI Pattern                 Controller#Action
  #     recipes GET    /recipes(.:format)          recipes#index
  #             POST   /recipes(.:format)          recipes#create
  #  new_recipe GET    /recipes/new(.:format)      recipes#new
  # edit_recipe GET    /recipes/:id/edit(.:format) recipes#edit
  #      recipe GET    /recipes/:id(.:format)      recipes#show
  #             PATCH  /recipes/:id(.:format)      recipes#update
  #             PUT    /recipes/:id(.:format)      recipes#update
  #             DELETE /recipes/:id(.:format)      recipes#destroy
end
