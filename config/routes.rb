Rails.application.routes.draw do

  resources :common_errors do
  collection do
    get 'preview'
  end
end
  devise_for :users
  
  root 'common_errors#index'  
  


  
end