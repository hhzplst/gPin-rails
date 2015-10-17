Rails.application.routes.draw do
  root "pins#index"
  get "/pins", to: "pins#index"
  get "/pins/new", to: "pins#new"
  post "/pins", to: "pins#create"
  get "/pins/:id", to: "pins#show", as: :pin
  get "/pins/:id/edit", to: "pins#edit"
  patch "/pins/:id", to: "pins#update"
  delete "/pins/:id", to: "pins#destroy"
end