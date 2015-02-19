Rails.application.routes.draw do

  resources :common_errors

  devise_for :users
  root 'welcome#index'  
  get 'welcome/index'


  
end
