Rails.application.routes.draw do
  root :to => 'home#index'

  get 'get_orders' => 'order_controller#get_orders'
 
  mount ShopifyApp::Engine, at: '/'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
