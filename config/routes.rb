Rails.application.routes.draw do
  # create, destroy
  resources :likes

  # index, create, update
  resources :coupons

  # index, show
  resources :businesses

  # show
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
