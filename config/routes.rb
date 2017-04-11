Rails.application.routes.draw do

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
