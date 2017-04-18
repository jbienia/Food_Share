Rails.application.routes.draw do

#  post ':user_id'
 get '/checkout', to:'checkout#checkout', as: 'checkout'

 get '/remove_from_cart/:meal_id', to: 'shopping_cart#remove'
  get '/cart', to:'shopping_cart#display_cart'
  get '/shopping_cart/:meal/', to: 'shopping_cart#add_to_cart', as:'shopping_cart'
  get 'log_out', to: 'sessions#destroy', as: 'log_out'
  get 'log_in', to: 'sessions#new', as: 'log_in'
  resources :sessions

  get '/sign_up', to: 'customers#new'
  resources :customers

 get '/sign_in', to: 'home#sign_in'
 get '/category/search/:number', to: 'search#category_result'

  get '/product', to: 'home#get_product'
  get '/about', to: 'home#about'
  get '/contact', to: 'home#contact'
  get 'search/keyword_result/', to: 'search#keyword_result'

  get 'category/display_category/:value', to: 'category#display_category'


  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'admin/meals/delete/remove/:value', to: 'delete#remove_image'
  #get 'category/meat',to:'category#display_meat'
  root'home#index'
end
