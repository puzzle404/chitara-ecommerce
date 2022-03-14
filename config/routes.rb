Rails.application.routes.draw do

  get 'carts/:id', to: "carts#show", as: "cart"
  get 'carts/show'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


delete 'carts/:id', to: "carts#destroy"

post 'order_items/:id/add', to:  "order_items#add_quantity", as: "order_item_add"
post 'order_items/:id/reduce' => "order_items#reduce_quantity", as: "order_item_reduce"
post 'order_items' => "order_items#create"
get 'order_items/:id' => "order_items#show", as: "order_item"
delete 'order_items/:id' => "order_items#destroy"

resources :sandals
resources :orders
end
