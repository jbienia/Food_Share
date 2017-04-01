Rails.application.routes.draw do
  get 'category/display_category/:value',to:'category#display_category'


  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'admin/meals/delete/remove/:value', to: 'delete#remove_image'
  #get 'category/meat',to:'category#display_meat'
  root'home#index'
end
